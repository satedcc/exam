<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
{
	public function index()
	{
		$this->form_validation->set_rules('username', 'username', 'trim|required');
		$this->form_validation->set_rules('password', 'Password', 'trim|required');
		if ($this->form_validation->run() == FALSE) {
			$this->load->view('login');
		} else {
			$this->do_login();
		}
	}
	private function do_login()
	{
		
		$username =  $this->input->post('username');
		$password =  md5(md5($this->input->post('password')));



		//EAG-20230321 ==> enhancement belokin login ke activerdirectory jika 3 huruf
		//==================================================================================
		if (!filter_var($username, FILTER_VALIDATE_EMAIL)) {
			if(strlen($username)==3){ 
				 $result =$this->GlobalapiLogin(base64_encode($username),base64_encode($this->input->post('password')));
				 $decoder = json_decode($result);
				 //$this->session->set_flashdata('message', json_encode($result));  
				 $userinfo= $decoder->userInfo;
				$email = $userinfo->email;
				if($decoder->status == 1){
					$user     =  $this->db->get_where('ex_register', [
						'email_peserta' => $email
					])->row_array();
					$data = [
							'username'  => $user['email_peserta'],
							'nama'      => $user['nama_lengkap'],
							'akun'      => $user['id_regis'],
							'regis'     => $user['no_regist']
						];
						$this->session->set_userdata($data);
						$this->db->query("UPDATE ex_register SET last_login='$now' WHERE email_peserta='$username' ");
						$this->db->query("INSERT INTO ex_history_login VALUES(NULL,'$user[id_regis]','$now','success')");
						redirect('../dashboard');
				}else{
					$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">'. $decoder->errorDescription .'</div>');			 
					redirect('../auth');
				} 
			}
		}
		//==================================================================================
		
		
		
		
		
		$user     =  $this->db->get_where('ex_register', [
			'email_peserta' => $username
		])->row_array();
		date_default_timezone_set('Asia/Jakarta');
		$now = date("Y-m-d H:i:s"); 
		if ($user) {
			if ($user['status_peserta'] == "1") {
				
				if ($password == $user['password']) { 
					$data = [
						'username'  => $user['email_peserta'],
						'nama'      => $user['nama_lengkap'],
						'akun'      => $user['id_regis'],
						'regis'     => $user['no_regist']
					];
					$this->session->set_userdata($data);
					$this->db->query("UPDATE ex_register SET last_login='$now' WHERE email_peserta='$username' ");
					$this->db->query("INSERT INTO ex_history_login VALUES(NULL,'$user[id_regis]','$now','success')");
					redirect('../dashboard');
				} 
				else {
					$failid = $this->db->query("SELECT email_peserta,failid FROM ex_register WHERE email_peserta='$username' AND failid='3'")->num_rows();
					if ($failid > 0) {
						$this->db->query("UPDATE ex_register SET status_peserta='0' WHERE email_peserta='$username'");
						$this->db->query("INSERT INTO ex_history_login VALUES(NULL,'$user[id_regis]','$now','disabled')");
					} else {
						$cek = $this->db->query("SELECT email_peserta FROM ex_register WHERE email_peserta='$username'")->num_rows();
						if ($cek > 0) {
							$this->db->query("UPDATE ex_register SET failid=failid+1 WHERE email_peserta='$username'");
							$this->db->query("INSERT INTO ex_history_login VALUES(NULL,'$user[id_regis]','$now','failid')");
						}
					}
					$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Your password is wrong</div>');
					redirect('../auth');
				} 
			} else {
				$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Account is not actived/disabled</div>');
				$this->db->query("INSERT INTO ex_history_login VALUES(NULL,'$user[id_regis]','$now','disabled')");
				redirect('../auth');
			}
		} else {
			$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Username/Password salah</div>');
			redirect('../auth');
		}
	}
	//EAG-20230321 ==> enhancement belokin login ke activerdirectory jika 3 huruf
	//==================================================================================
	private function GlobalapiLogin($username,$password)
	{
		$url = 'https://gen5-qc.asuransiastra.com/GlobalAPINew/account/LoginExternalSystem';
		$data = "username=".$username."&password=".$password."&applicationCode=MTAy";
		$curl = curl_init($url);
		curl_setopt($curl, CURLOPT_POST, true);
		curl_setopt($curl, CURLOPT_RETURNTRANSFER, true); 
		curl_setopt($curl, CURLOPT_POSTFIELDS, $data); 
		$result = curl_exec($curl);
		curl_close($curl);
		return $result; 
	}
	//==================================================================================
}
