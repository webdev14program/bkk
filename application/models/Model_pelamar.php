<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Model_pelamar extends CI_Model
{
    public function countLowongan()
    {
        $sql = 'SELECT COUNT(*) AS siswa FROM `siswa`';
        $query = $this->db->query($sql);
        return $query->row()->siswa;
    }

    public function dataPelamar()
    {
        $sql = "SELECT lamar_loker.*,lowongan.*,lamar_loker.gambar FROM `lamar_loker`
                INNER JOIN lowongan
                ON lamar_loker.id_lowongan=lowongan.id_lowongan
                ORDER BY `lamar_loker`.`time` DESC";
        $query = $this->db->query($sql);
        return $query->result_array();
    }

    public function detail_pelamar($id_lamar)
    {
        return $this->db->get_where('lamar_loker', ['id_lamar' => $id_lamar])->row_array();
    }

    public function dataAlumni()
    {
        $sql = "SELECT tahun_lulus,
                COUNT(IF(status='Kuliah','Benar',null)) AS kuliah, 
                COUNT(IF(status='Bekerja','Benar',null)) AS bekerja,
                COUNT(IF(status='Belum bekerja/belum kuliah','Benar',null)) AS Belum_bekerja_belum_kuliah,
                COUNT(IF(status='Wirausaha','Benar',null)) AS Wirausaha,COUNT(*) AS total
                FROM `siswa`
                GROUP BY tahun_lulus
                ORDER BY tahun_lulus DESC;";
        $query = $this->db->query($sql);
        return $query->result_array();
    }

    function simpanAlumni($data = array())
    {
        $jumlah = count($data);

        if ($jumlah > 0) {
            $this->db->insert_batch('siswa', $data);
        }
    }
}
