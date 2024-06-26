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

    // public function permintaan_tenaga_kerja()
    // {
    //     $sql = "SELECT id_permintaan_tenaga_kerja,nama_perusahaan,bidang_perusahaan,tlpn_perusahaan,akl,bdp,otkp,tkj FROM `permintaan_tenaga_kerja`;";
    //     $query = $this->db->query($sql);
    //     return $query->result_array();
    // }

    public function permintaan_tenaga_kerja()
    {
        $sql = "SELECT tahun_lulus,tahun_ajaran.tahun_ajaran,COUNT(*) AS perusahaan,
        COUNT(IF(kompetensi_keahlian='Akuntansi Keuangan dan Lembaga (AKL) 1' OR kompetensi_keahlian='Akuntansi Keuangan dan Lembaga (AKL) 2','AKL',NULL)) AS akl ,
        COUNT(IF(kompetensi_keahlian='Bisnis Daring dan Pemasaran (BDP) 1' OR kompetensi_keahlian='Bisnis Daring dan Pemasaran (BDP) 2','BDP',NULL)) AS bdp,
        COUNT(IF(kompetensi_keahlian='Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1' OR kompetensi_keahlian='Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2','OTKP',NULL)) AS otkp,COUNT(IF(kompetensi_keahlian='Teknik Komputer dan Jaringan (TKJ) 1' OR kompetensi_keahlian='Teknik Komputer dan Jaringan (TKJ) 2' OR kompetensi_keahlian='Teknik Komputer dan Jaringan (TKJ) 3','TKJ',NULL)) AS tkj,
        tahun_lulus
        FROM `siswa`
        INNER JOIN tahun_ajaran
        ON siswa.tahun_lulus=tahun_ajaran.id_tahun_ajaran
        WHERE siswa.status='Bekerja'
        GROUP BY tahun_lulus
        ORDER BY tahun_lulus DESC;";
        $query = $this->db->query($sql);
        return $query->result_array();
    }

    public function print_permintaan_tenaga_kerja($tahun_lulus)
    {
        $sql = "SELECT nama_perusahaan,bidang_perusahaan,COUNT(*) AS permintaan_tenaga_kerja,
COUNT(IF(kompetensi_keahlian='Akuntansi Keuangan dan Lembaga (AKL) 1' OR kompetensi_keahlian='Akuntansi Keuangan dan Lembaga (AKL) 2','AKL',NULL)) AS akl ,
COUNT(IF(kompetensi_keahlian='Bisnis Daring dan Pemasaran (BDP) 1' OR kompetensi_keahlian='Bisnis Daring dan Pemasaran (BDP) 2','BDP',NULL)) AS bdp,
COUNT(IF(kompetensi_keahlian='Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1' OR kompetensi_keahlian='Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2','OTKP',NULL)) AS otkp,COUNT(IF(kompetensi_keahlian='Teknik Komputer dan Jaringan (TKJ) 1' OR kompetensi_keahlian='Teknik Komputer dan Jaringan (TKJ) 2' OR kompetensi_keahlian='Teknik Komputer dan Jaringan (TKJ) 3','TKJ',NULL)) AS tkj, tahun_lulus
FROM `siswa`
WHERE status='Bekerja' AND tahun_lulus='$tahun_lulus'
GROUP BY tahun_lulus,nama_perusahaan
ORDER BY tahun_lulus DESC;";
        $query = $this->db->query($sql);
        return $query->result_array();
    }

    public function detail_kerjasama_perusahaan($id_perusahaan)
    {
        $sql = "SELECT * FROM `perusahaan`
WHERE id_perusahaan='$id_perusahaan';";
        $query = $this->db->query($sql);
        return $query->row_array();
    }

    function simpan($data = array())
    {
        $jumlah = count($data);

        if ($jumlah > 0) {
            $this->db->insert_batch('perusahaan', $data);
        }
    }
}
