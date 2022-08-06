<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Profil extends CI_Controller
{

    public function index()
    {
        $this->load->view('Template_home/header');
        $this->load->view('tampilan_profil');
        $this->load->view('Template_home/footer');
    }
}
