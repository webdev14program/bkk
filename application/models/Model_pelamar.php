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
        $sql = "SELECT siswa.tahun_lulus,tahun_ajaran.tahun_ajaran,
        COUNT(IF(siswa.status='Bekerja','Benar',null)) AS bekerja,((COUNT(IF(siswa.status='Bekerja','Benar',null)))/count(*))*100 AS precent_bekerja,
        COUNT(IF(siswa.status='Kuliah','Benar',null)) AS kuliah, ((COUNT(IF(siswa.status='Kuliah','Benar',null)))/count(*))*100 AS percent_kuliah,
        COUNT(IF(siswa.status='Wirausaha','Benar',null)) AS Wirausaha,((COUNT(IF(siswa.status='Wirausaha','Benar',null)))/count(*))*100 AS percent_wirausaha,
        COUNT(IF(siswa.status='Belum bekerja/belum kuliah','Benar',null)) AS Belum_bekerja_belum_kuliah,((COUNT(IF(siswa.status='Belum bekerja/belum kuliah','Benar',null)))/count(*))*100 AS percent_Belum_bekerja,
        COUNT(*) AS total
        FROM `siswa`
        INNER JOIN tahun_ajaran
        ON siswa.tahun_lulus=tahun_ajaran.id_tahun_ajaran
        GROUP BY siswa.tahun_lulus
        ORDER BY siswa.tahun_lulus DESC;";
        $query = $this->db->query($sql);
        return $query->result_array();
    }

    public function PrintdataAlumniHeader($tahun_lulus)
    {
        $sql = "SELECT * FROM `siswa`
        INNER JOIN tahun_ajaran
        ON siswa.tahun_lulus=tahun_ajaran.id_tahun_ajaran
        WHERE tahun_lulus='$tahun_lulus';";
        $query = $this->db->query($sql);
        return $query->row_array();
    }

    public function PrintdataAlumni($tahun_lulus)
    {
        $sql = "SELECT * FROM `siswa`
WHERE tahun_lulus='$tahun_lulus' AND (status='Bekerja' OR status='Kuliah' OR status='Wirausaha') 
ORDER BY kompetensi_keahlian ASC;";
        $query = $this->db->query($sql);
        return $query->result_array();
    }

    public function homeBekerja()
    {
        $sql = "SELECT COUNT(*) AS bekerja FROM `siswa`
        INNER JOIN tahun_ajaran
        ON siswa.tahun_lulus=tahun_ajaran.id_tahun_ajaran
        WHERE tahun_ajaran.status='AKTIF' AND siswa.status='Bekerja';";
        $query = $this->db->query($sql);
        return $query->row_array();
    }

    public function homeKuliah()
    {
        $sql = "SELECT COUNT(*) AS kuliah FROM `siswa`
        INNER JOIN tahun_ajaran
        ON siswa.tahun_lulus=tahun_ajaran.id_tahun_ajaran
        WHERE tahun_ajaran.status='AKTIF' AND siswa.status='Kuliah';";
        $query = $this->db->query($sql);
        return $query->row_array();
    }

    public function homeWirausaha()
    {
        $sql = "SELECT COUNT(*) AS wirausaha FROM `siswa`
        INNER JOIN tahun_ajaran
        ON siswa.tahun_lulus=tahun_ajaran.id_tahun_ajaran
        WHERE tahun_ajaran.status='AKTIF' AND siswa.status='Wirausaha';";
        $query = $this->db->query($sql);
        return $query->row_array();
    }

    public function homeBelumBekerja()
    {
        $sql = "SELECT COUNT(*) AS belum_bekerja FROM `siswa`
        INNER JOIN tahun_ajaran
        ON siswa.tahun_lulus=tahun_ajaran.id_tahun_ajaran
        WHERE tahun_ajaran.status='AKTIF' AND siswa.status='Belum bekerja/belum kuliah';";
        $query = $this->db->query($sql);
        return $query->row_array();
    }

    function simpanAlumni($data = array())
    {
        $jumlah = count($data);

        if ($jumlah > 0) {
            $this->db->insert_batch('siswa', $data);
        }
    }
    function simpanTracerStudy($data = array())
    {
        $jumlah = count($data);

        if ($jumlah > 0) {
            $this->db->insert_batch('tracer_study', $data);
        }
    }

    public function data_tracer_study()
    {
        $sql = "SELECT tahun,count(*) AS jumlah_responden
        FROM `tracer_study`
        GROUP BY tahun
        ORDER BY tahun DESC;";
        $query = $this->db->query($sql);
        return $query->result_array();
    }

    public function print_tracer_study($tahun)
    {
        $sql = "SELECT pengaku_kepentinghan,religius,jujur,tanggung_jawab,disiplin,pengetahuan,teknologi,budaya,kreatifitas,produktif,komunikasi,kolaborasi FROM `tracer_study` 
        WHERE tahun='$tahun'";
        $query = $this->db->query($sql);
        return $query->result_array();
    }

    public function data_kelas_jurusan()
    {
        $sql = "SELECT kelas_jurusan.id_kelas_jurusan,jurusan.id,jurusan.kode,jurusan.jurusan,kelas_jurusan.nama_kelas_jurusan FROM `kelas_jurusan`
        INNER JOIN jurusan
        ON jurusan.id=kelas_jurusan.id_jurusan;";
        $query = $this->db->query($sql);
        return $query->result_array();
    }
}
