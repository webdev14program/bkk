<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Model_kegiatan extends CI_Model
{
    public function data_kegiatan()
    {
        $sql = "SELECT *,YEAR(timestamp) AS TAHUN FROM `kegiatan`;";
        $query = $this->db->query($sql);
        return $query->result_array();
    }

    public function detail_kegiatan($id_kegiatan)
    {
        $sql = "SELECT * FROM `kegiatan`
                WHERE id_kegiatan='$id_kegiatan';";
        $query = $this->db->query($sql);
        return $query->row_array();
    }

    public function gambar_kegiatan($id_kegiatan)
    {
        $sql = "SELECT kegiatan_gambar.id_kegiatan_gambar,kegiatan.id_kegiatan,kegiatan_gambar.gambar FROM `kegiatan_gambar`
                INNER JOIN kegiatan
                ON kegiatan_gambar.id_kegiatan=kegiatan.id_kegiatan
                WHERE kegiatan.id_kegiatan='$id_kegiatan';";
        $query = $this->db->query($sql);
        return $query->result_array();
    }

    function simpanGambarKegiatan($data = array())
    {
        $jumlah = count($data);

        if ($jumlah > 0) {
            $this->db->insert_batch('kegiatan_gambar', $data);
        }
    }
}
