<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Admin_kerja_sama extends CI_Controller
{
	public function index()
	{
		$this->Model_keamanan->getKeamanan();
		$isi['perusahaan'] = $this->Model_perusahaan->dataPerusahaan();
		$isi['content'] = 'Admin/Kerja_sama/kerja_sama';
		$this->load->view('Admin/Templates/header');
		$this->load->view('Admin/Home', $isi);
		$this->load->view('Admin/Templates/footer');
	}

	public function tambah_kerjasama()
	{

		$this->Model_keamanan->getKeamanan();
		$isi['content'] = 'Admin/Kerja_sama/tambah_kerja_sama';
		$this->load->view('Admin/Templates/header');
		$this->load->view('Admin/Home', $isi);
		$this->load->view('Admin/Templates/footer');
	}

	public function upload_perusahaan()
	{
		$this->Model_keamanan->getKeamanan();
		$nama = $this->input->post('perusahaan');
		$gambar = $this->input->post('gambar');


		$data = array(
			'nama' =>  $nama,
			'gambar' => $gambar,
		);

		$this->db->insert('perusahaan', $data);
		redirect('Admin_kerja_sama');
	}

	public function detail_perusahaan($id_perusahaan)
	{
		$isi['kerja_sama'] = $this->Model_perusahaan->detail_kerjasama_perusahaan($id_perusahaan);
		$isi['content'] = 'Admin/Kerja_sama/detail_kerja_sama';
		$this->load->view('Admin/Templates/header');
		$this->load->view('Admin/Home', $isi);
		$this->load->view('Admin/Templates/footer');
	}
}
