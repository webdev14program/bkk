<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Model_perusahaan extends CI_Model
{
    public function countSiswa()
    {
        $sql = 'SELECT COUNT(*) AS siswa FROM `siswa`';
        $query = $this->db->query($sql);
        return $query->row()->siswa;
    }

    public function dataPerusahaan()
    {
        $sql = "SELECT * FROM `perusahaan`";
        $query = $this->db->query($sql);
        return $query->result_array();
    }
}
