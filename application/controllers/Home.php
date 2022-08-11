<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Home extends CI_Controller
{

    public function index()
    {
        $isi['data'] = $this->Model_perusahaan->dataPerusahaan();
        $isi['lowongan'] = $this->Model_lowongan->dataLowonganlimit();

        $this->load->view('Template_home/header');
        $this->load->view('tampilan_home', $isi);
        $this->load->view('Template_home/footer');
    }
}
