<?php
defined('BASEPATH') or exit('No direct script access allowed');

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

class Welcome extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		require APPPATH . 'libraries/phpmailer/src/Exception.php';
		require APPPATH . 'libraries/phpmailer/src/PHPMailer.php';
		require APPPATH . 'libraries/phpmailer/src/SMTP.php';
	}

	public function index()
	{
		// $essay 	= $this->db->query("(SELECT * FROM ex_detail_soal AS a LEFT JOIN ex_soal AS b ON a.id_soal=b.id_soal WHERE b.jenis_soal='E' AND a.id_ujian='1' ORDER BY RAND() LIMIT 5)
		// UNION 
		// (SELECT * FROM ex_detail_soal AS a LEFT JOIN ex_soal AS b ON a.id_soal=b.id_soal WHERE b.jenis_soal='M' AND a.id_ujian='1' ORDER BY RAND() LIMIT 8) 
		// UNION 
		// (SELECT * FROM ex_detail_soal AS a LEFT JOIN ex_soal AS b ON a.id_soal=b.id_soal WHERE b.jenis_soal='H' AND a.id_ujian='1' ORDER BY RAND() LIMIT 8)")->result();


		// $no = 1;
		// foreach ($essay as $e) {
		// 	echo "$no.  Soal: Type " . $e->type_soal . " (" . $e->jenis_soal . ")<br>";
		// 	$no++;
		// }
		email_default('satedcc@gmail.com', 'Satria Adipradana', 'password');
	}
}
