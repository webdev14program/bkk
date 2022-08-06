<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Model_lowongan extends CI_Model
{
    public function countLowongan()
    {
        $sql = 'SELECT COUNT(*) AS siswa FROM `siswa`';
        $query = $this->db->query($sql);
        return $query->row()->siswa;
    }

    public function dataLowongan()
    {
        $sql = "SELECT * FROM `lowongan`";
        $query = $this->db->query($sql);
        return $query->result_array();
    }
    public function dataLowonganlimit()
    {
        $sql = "SELECT * FROM `lowongan`  
                ORDER BY `lowongan`.`timestamp` DESC
                LIMIT 3";
        $query = $this->db->query($sql);
        return $query->result_array();
    }
    public function dataLowonganlimit20()
    {
        $sql = "SELECT * FROM `lowongan`  
                ORDER BY `lowongan`.`timestamp` DESC
                LIMIT 20";
        $query = $this->db->query($sql);
        return $query->result_array();
    }

    public function detail_loker($id_lowongan)
    {
        return $this->db->get_where('lowongan', ['id_lowongan' => $id_lowongan])->row_array();
    }
}
