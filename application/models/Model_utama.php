<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Model_utama extends CI_Model
{
    public function tahun_aktif()
    {
        $sql = "SELECT * FROM `tahun_ajaran`
                WHERE status='AKTIF';";
        $query = $this->db->query($sql);
        return $query->row_array();
    }
}
