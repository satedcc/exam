<?php

class M_jadwal extends CI_Model
{
    private $table = "ex_jadwal";
    private $table2 = "ex_detail_jadwal";
    function get($id)
    {
        return $this->db->query("SELECT * FROM ex_jadwal AS a LEFT JOIN ex_ujian AS b ON a.id_kategori=b.id_ujian WHERE a.id_user='$id' ORDER BY a.id_jadwal DESC");
    }
    function getAdmin()
    {
        return $this->db->query("SELECT * FROM ex_jadwal AS a LEFT JOIN ex_ujian AS b ON a.id_kategori=b.id_ujian ORDER BY a.id_jadwal DESC");
    }
    function getUser($id)
    {
        return $this->db->query("SELECT * FROM ex_jadwal AS a 
                                            LEFT JOIN ex_ujian AS b ON a.id_kategori=b.id_ujian
                                            LEFT JOIN ex_detail_jadwal AS c ON a.id_jadwal=c.id_jadwal WHERE c.id_regis='$id' AND status_partisipant='Y'");
    }
    function getAll()
    {
        return $this->db->query("SELECT * FROM ex_jadwal AS a LEFT JOIN ex_register AS b ON a.id_regis=b.id_regis");
    }
    function getPartisipant($id)
    {
        return $this->db->query("SELECT * FROM ex_detail_jadwal AS a LEFT JOIN ex_register AS b ON a.id_regis=b.id_regis LEFT JOIN ex_qualified AS c ON b.id_qua=c.id_qua WHERE a.id_jadwal='$id'");
    }
    public function save($data)
    {
        return $this->db->insert($this->table, $data);
    }
    public function savePartisipant($data)
    {
        return $this->db->insert($this->table2, $data);
    }
    public function getById($id)
    {
        return $this->db->get_where($this->table, ["id_jadwal" => $id])->row();
    }
    public function delete($id)
    {
        return $this->db->delete($this->table, array("id_jadwal" => $id));
    }
    public function deleteDetail($id)
    {
        return $this->db->delete($this->table2, array("id_jadwal" => $id));
    }
    public function deletePartisipant($id)
    {
        return $this->db->delete($this->table2, array("id_detail_jadwal" => $id));
    }
    public function update($data, $id)
    {
        return $this->db->update($this->table, $data, array('id_jadwal' => $id));
    }
    function cekPartisipant($id, $akun)
    {
        return $this->db->query("SELECT * FROM ex_detail_jadwal WHERE id_jadwal='$id' AND id_regis='$akun'");
    }
    function cekJadwal($id, $ujian)
    {
        return $this->db->query("SELECT * FROM ex_detail_jadwal WHERE id_regis='$id' AND id_jadwal='$ujian' AND status_partisipant='Y'");
    }
    public function updateDetail($data, $id)
    {
        return $this->db->update($this->table2, $data, array('id_detail_jadwal' => $id));
    }
    public function getID()
    {
        return $this->db->query("SELECT max(kode_jadwal) as kodeTerbesar FROM ex_jadwal")->row();
    }
    function cekJadwalAktif($ujian)
    {
        return $this->db->query("SELECT * FROM ex_detail_jadwal as a LEFT JOIN ex_register as b ON a.id_regis=b.id_regis WHERE a.id_jadwal='$ujian'");
    }
    function cekTanggal($id)
    {
        return $this->db->query("SELECT * FROM ex_jadwal WHERE ( NOW() BETWEEN mulai AND selesai AND id_jadwal='$id')")->num_rows();
    }
    public function cekId($id)
    {
        return $this->db->get_where($this->table, ["kode_jadwal" => $id])->num_rows();
    }
    function dataExamUser($id, $jadwal)
    {
        return $this->db->query("SELECT 
                                    a.token_id,
                                    a.id_soal,
                                    a.jawaban,
                                    a.status_jawaban,
                                    a.id_regis,
                                    b.no_regist,
                                    b.file_photo,
                                    b.nama_lengkap,
                                    b.email_peserta
                                    FROM ex_jawaban AS a LEFT JOIN ex_register AS b ON a.id_regis=b.id_regis
                                    WHERE a.id_jadwal='$jadwal' AND a.id_regis='$id'
                                    GROUP BY a.token_id;");
    }
    function listParticipant($jadwal)
    {
        return $this->db->query("SELECT 
                                    b.kode_jadwal,
                                    c.no_regist,
                                    a.id_regis,
                                    a.id_jadwal,
                                    c.nama_lengkap,
                                    d.nama_qualified,
                                    b.nama_jadwal,
                                    b.score,
                                    b.nilai_benar,
                                    b.nilai_salah
                                        FROM ex_detail_jadwal AS a 
                                            LEFT JOIN ex_jadwal AS b ON a.id_jadwal=b.id_jadwal 
                                            LEFT JOIN ex_register AS c ON a.id_regis=c.id_regis
                                            LEFT JOIN ex_qualified AS d ON c.id_qua=d.id_qua
                                            WHERE a.id_jadwal='$jadwal'");
    }
    function analisa($jadwal)
    {
        return $this->db->query("SELECT 
                                    b.nama_lengkap,
                                    b.email_peserta,
                                    b.no_regist,
                                    d.nama_jadwal,
                                    a.created_date,
                                    c.soal,
                                    a.jawaban,
                                    c.soal_jawaban AS kunci_jawaban,
                                    a.status_jawaban AS benar_salah
                                    FROM ex_jawaban AS a 
                                    LEFT JOIN ex_register AS b ON a.id_regis=b.id_regis
                                    LEFT JOIN ex_soal AS c ON a.id_soal=c.id_soal
                                    LEFT JOIN ex_jadwal AS d ON a.id_jadwal=d.id_jadwal
                                    WHERE a.id_jadwal='1'")->result();
    }
}
