<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Lowongan_kerja extends CI_Controller
{

    public function index()
    {
        $isi['lowongan'] = $this->Model_lowongan->dataLowonganlimit20();
        $this->load->view('Template_home/header');
        $this->load->view('Lowongan/tampilan_lowongan_kerja', $isi);
        $this->load->view('Template_home/footer');
    }

    public function detail_loker($id_lowongan)
    {
        $isi['lowongan'] = $this->Model_lowongan->detail_loker($id_lowongan);
        $this->load->view('Template_home/header');
        $this->load->view('Lowongan/tampilan_loker_detail', $isi);
        $this->load->view('Template_home/footer');
    }
    public function lamar_loker($id_lowongan)
    {
        $isi['lowongan'] = $this->Model_lowongan->detail_loker($id_lowongan);
        $this->load->view('Template_home/header');
        $this->load->view('Lowongan/tampilan_lamar', $isi);
        $this->load->view('Template_home/footer');
    }

    public function tambah_lamar_loker()
    {
        $gambar = $_FILES['gambar']['name'];
        $config['upload_path']          = './assets/upload/lamaran_pekerjaan';
        $config['allowed_types']        = 'gif|jpg|png|jpeg';
        $config['overwrite']            = true;
        $config['max_size']             = 2048;
        $this->load->library('upload', $config);

        if ($this->upload->do_upload('gambar')) {
            $gambar = $this->upload->data("file_name");
            // redirect('Admin/data_testimoni');
        }

        $data = array(
            'id_lamar' => rand(10000, 99999),
            'id_lowongan' => $this->input->post('id_lowongan'),
            'nama' => $this->input->post('nama'),
            'tempat_lahir' => $this->input->post('tempat_lahir'),
            'tgl_lahir' => $this->input->post('tgl_lahir'),
            'alamat' => $this->input->post('alamat'),
            'hp' => $this->input->post('hp'),
            'jenis_kelamin' => $this->input->post('jenis_kelamin'),
            'agama' => $this->input->post('agama'),
            'status' => $this->input->post('status'),
            'kewarganegaraan' => $this->input->post('kewarganegaraan'),
            'status' => $this->input->post('status'),
            'sd' => $this->input->post('sd'),
            'tahun_sd' => $this->input->post('tahun_sd'),
            'smp' => $this->input->post('smp'),
            'tahun_smp' => $this->input->post('tahun_smp'),
            'smk' => $this->input->post('smk'),
            'tahun_smk' => $this->input->post('tahun_smk'),
            'jurusan' => $this->input->post('jurusan'),
            'kemampuan' => $this->input->post('kemampuan'),
            'background' => $this->input->post('background'),
            'gambar' => $gambar
        );

        $this->db->insert('lamar_loker', $data);
        redirect('Lowongan_kerja/lamar_loker_sukses_daftar');
    }

    public function lamar_loker_sukses_daftar()
    {
        $this->load->view('Template_home/header');
        $this->load->view('Lowongan/tampilan_lamaranLoker_sukses');
        $this->load->view('Template_home/footer');
    }
}
