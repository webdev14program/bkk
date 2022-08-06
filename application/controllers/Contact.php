<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Contact extends CI_Controller
{

    public function index()
    {

        $this->load->view('Template_home/header');
        $this->load->view('tampilan_contact');
        $this->load->view('Template_home/footer');
    }
}
