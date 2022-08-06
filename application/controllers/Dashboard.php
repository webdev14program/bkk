<?php
defined('BASEPATH') or exit('No direct script access allowed');

require_once APPPATH . 'third_party/spout/src/Spout/Autoloader/autoload.php';

use Box\Spout\Reader\Common\Creator\ReaderEntityFactory;

class Dashboard extends CI_Controller
{

    public function index()
    {
        $this->Model_keamanan->getKeamanan();
        $isi['content'] = 'Admin/tampilan_dashboard';
        $this->load->view('Admin/Templates/header');
        $this->load->view('Admin/Home', $isi);
        $this->load->view('Admin/Templates/footer');
    }

    public function kerja_sama()
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
        $profil = $this->input->post('profil');
        $gambar = $_FILES['gambar']['name'];
        $config['upload_path']          = './assets/upload';
        $config['allowed_types']        = 'gif|jpg|png|jpeg';
        $config['overwrite']            = true;
        $config['max_size']             = 2048;
        $this->load->library('upload', $config);

        if ($this->upload->do_upload('gambar')) {
            $gambar = $this->upload->data("file_name");
            // redirect('Admin/data_testimoni');
        }

        $data = array(
            'nama' =>  $nama,
            'profil' => $profil,
            'gambar' => $gambar
        );

        $this->db->insert('perusahaan', $data);
        redirect('Dashboard/kerja_sama');
    }

    public function lowongan()
    {
        $this->Model_keamanan->getKeamanan();
        $isi['lowongan'] = $this->Model_lowongan->dataLowongan();
        $isi['content'] = 'Admin/Lowongan/tampil_lowongan';
        $this->load->view('Admin/Templates/header');
        $this->load->view('Admin/Home', $isi);
        $this->load->view('Admin/Templates/footer');
    }

    public function tambah_lowongan()
    {
        $this->Model_keamanan->getKeamanan();
        $isi['content'] = 'Admin/Lowongan/tambah_lowongan';
        $this->load->view('Admin/Templates/header');
        $this->load->view('Admin/Home', $isi);
        $this->load->view('Admin/Templates/footer');
    }

    public function upload_lowongan()
    {
        $this->Model_keamanan->getKeamanan();
        $nama = $this->input->post('nama_perusahaan');
        $bagian = $this->input->post('bagian');
        $detail = $this->input->post('detail');
        $gaji = $this->input->post('gaji');
        $tgl_awal = $this->input->post('tgl_dibuat');
        $tgl_akhir = $this->input->post('tgl_akhir');
        $gambar = $_FILES['gambar']['name'];
        $config['upload_path']          = './assets/lowongan';
        $config['allowed_types']        = 'gif|jpg|png|jpeg';
        $config['overwrite']            = true;
        $config['max_size']             = 2048;
        $this->load->library('upload', $config);

        if ($this->upload->do_upload('gambar')) {
            $gambar = $this->upload->data("file_name");
            // redirect('Admin/data_testimoni');
        }

        $data = array(
            'nama_perusahaan' =>  $nama,
            'bagian' => $bagian,
            'detail' =>  $detail,
            'gaji' => $gaji,
            'tgl_dibuat' =>  $tgl_awal,
            'tgl_akhir' => $tgl_akhir,
            'gambar' => $gambar
        );

        $this->db->insert('lowongan', $data);
        redirect('Dashboard/lowongan');
    }

    public function pelamar_loker()
    {
        $this->Model_keamanan->getKeamanan();
        $isi['pelamar'] = $this->Model_pelamar->dataPelamar();
        $isi['content'] = 'Admin/Pelamar_loker/tampilan_pelamar_loker';
        $this->load->view('Admin/Templates/header');
        $this->load->view('Admin/Home', $isi);
        $this->load->view('Admin/Templates/footer');
    }

    public function alumni()
    {
        $this->Model_keamanan->getKeamanan();
        $isi['alumni'] = $this->Model_pelamar->dataAlumni();
        $isi['content'] = 'Admin/data_siswa_lulus';
        $this->load->view('Admin/Templates/header');
        $this->load->view('Admin/Home', $isi);
        $this->load->view('Admin/Templates/footer');
    }

    public function hapus_all_alumni()
    {
        $this->db->empty_table('siswa');
        // $this->session->set_flashdata('info', '<div class="row">
        // <div class="col-md mt-2">
        //     <div class="alert alert-danger alert-dismissible fade show" role="alert">
        //         <strong>Data Siswa Berhasil Di Hapus</strong>
        //         <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        //             <span aria-hidden="true">&times;</span>
        //         </button>
        //     </div>

        // </div>
        // </div>');
        redirect('Dashboard/alumni');
    }

    public function  upload_data_alumni()
    {
        if ($this->input->post('submit', TRUE) == 'upload') {
            $config['upload_path']      = './temp_doc/';
            $config['allowed_types']    = 'xlsx|xls';
            $config['file_name']        = 'doc' . time();

            $this->load->library('upload', $config);

            if ($this->upload->do_upload('excel')) {
                $file   = $this->upload->data();

                $reader = ReaderEntityFactory::createXLSXReader();
                $reader->open('temp_doc/' . $file['file_name']);


                foreach ($reader->getSheetIterator() as $sheet) {
                    $numRow = 1;
                    $save   = array();
                    foreach ($sheet->getRowIterator() as $row) {

                        if ($numRow > 1) {

                            $cells = $row->getCells();

                            $data = array(
                                'id'              => $cells[0],
                                'nama_siswa'      => $cells[1],
                                'kompetensi_keahlian'        => $cells[2],
                                'alamat'        => $cells[3],
                                'tlpn'           => $cells[4],
                                'email'          => $cells[5],
                                'status'          => $cells[6],
                                'tahun_lulus'          => $cells[7],
                            );
                            array_push($save, $data);
                        }
                        $numRow++;
                    }
                    $this->Model_pelamar->simpanAlumni($save);
                    $reader->close();
                    unlink('temp_doc/' . $file['file_name']);
                    $this->session->set_flashdata('info', '
                    <div class="row">
                    <div class="col-md mt-2">
                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                            <strong>Data Peserta Ujian Berhasil Di Tambah</strong>
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                    </div>
                    </div>');
                    redirect('Dashboard/alumni');
                }
            } else {
                echo "Error :" . $this->upload->display_errors();
            }
        }
    }

    public function print($id_lamar)
    {
        $isi['pelamar'] = $this->Model_pelamar->detail_pelamar($id_lamar);
        $this->load->view('Admin/Pelamar_loker/detail_lamar', $isi);
    }
    public function logout()
    {
        $this->session->sess_destroy();
        redirect('/admin');
    }
}
