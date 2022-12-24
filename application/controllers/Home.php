<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Home extends CI_Controller
{

    public function index()
    {
        $isi['data'] = $this->Model_perusahaan->dataPerusahaan();
        $isi['lowongan'] = $this->Model_lowongan->dataLowonganlimit();
        $isi['alumni'] = $this->Model_pelamar->dataAlumni();
        $this->load->view('Template_home/header');
        $this->load->view('tampilan_home', $isi);
        $this->load->view('Template_home/footer');
    }

    public function tracer_study()
    {
        $this->load->view('Template_home/header');
        $this->load->view('tampilan_tracer_study');
        $this->load->view('Template_home/footer');
    }
    public function berhasil_tracer_study()
    {
        $this->load->view('tampilan_berhasil_tracer_study');
    }

    public function simpan()
    {
        date_default_timezone_set("Asia/jakarta");
        $tahun = date("Y");
        $id_tarcert_study = rand(11111111, 99999999);
        $pengaku_kepentinghan = $this->input->post('pengaku_kepentinghan');
        $religius = $this->input->post('religius');
        $jujur = $this->input->post('jujur');
        $tanggung_jawab = $this->input->post('tanggung_jawab');
        $disiplin = $this->input->post('disiplin');
        $pengetahuan = $this->input->post('pengetahuan');
        $teknologi = $this->input->post('teknologi');
        $budaya = $this->input->post('budaya');
        $kreatifitas = $this->input->post('kreatifitas');
        $produktif = $this->input->post('produktif');
        $komunikasi = $this->input->post('komunikasi');
        $kolaborasi = $this->input->post('kolaborasi');

        $data = array(
            'id_tarcert_study' => $id_tarcert_study,
            'pengaku_kepentinghan' => $pengaku_kepentinghan,
            'religius' => $religius,
            'jujur' => $jujur,
            'tanggung_jawab' => $tanggung_jawab,
            'disiplin' => $disiplin,
            'pengetahuan' => $pengetahuan,
            'teknologi' => $teknologi,
            'budaya' => $budaya,
            'kreatifitas' => $kreatifitas,
            'produktif' => $produktif,
            'komunikasi' => $komunikasi,
            'kolaborasi' => $kolaborasi,
            'tahun' => $tahun
        );

        $this->db->insert('tracer_study', $data);
        redirect('Home/berhasil_tracer_study');
    }

    public function tamatan_alumni()
    {
        $isi['kelas_jurusan'] = $this->Model_pelamar->data_kelas_jurusan();
        $this->load->view('Template_home/header');
        $this->load->view('tampilan_tamatan_alumni', $isi);
        $this->load->view('Template_home/footer');
    }
}
