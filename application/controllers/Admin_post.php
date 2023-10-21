<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Admin_post extends CI_Controller
{

	public function index()
	{
		$isi['content'] = 'Admin/Post/tampilan_post';
		$this->load->view('Admin/Templates/header');
		$this->load->view('Admin/Home', $isi);
		$this->load->view('Admin/Templates/footer');
	}
}
