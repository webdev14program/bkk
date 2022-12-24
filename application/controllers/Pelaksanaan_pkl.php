<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Pelaksanaan_pkl extends CI_Controller
{


    public function index()
    {
        $this->load->view('Template_home/header');
        $this->load->view('tampilan_pelaksanaan_pkl');
        $this->load->view('Template_home/footer');
    }
}
