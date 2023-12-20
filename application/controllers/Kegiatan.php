<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Kegiatan extends CI_Controller
{


    public function index()
    {
        $isi['kegiatan'] = $this->Model_kegiatan->data_kegiatan();
        $this->load->view('Template_home/header');
        $this->load->view('tampilan_kegiatan', $isi);
        $this->load->view('Template_home/footer');
    }

    public function detail_kegiatan($id_kegiatan)
    {
        $isi['kegiatan'] = $this->Model_kegiatan->detail_kegiatan($id_kegiatan);
        $isi['gambar'] = $this->Model_kegiatan->gambar_kegiatan($id_kegiatan);
        $this->load->view('Template_home/header');
        $this->load->view('tampilan_detail_kegiatan', $isi);
        $this->load->view('Template_home/footer');
    }
}
