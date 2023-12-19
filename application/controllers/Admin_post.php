<?php
defined('BASEPATH') or exit('No direct script access allowed');

require_once APPPATH . 'third_party/spout/src/Spout/Autoloader/autoload.php';

use Box\Spout\Reader\Common\Creator\ReaderEntityFactory;

class Admin_post extends CI_Controller
{

	public function index()
	{
		$this->Model_keamanan->getKeamanan();
		$isi['kegiatan'] = $this->Model_kegiatan->data_kegiatan();
		$isi['content'] = 'Admin/Post/tampilan_post';
		$this->load->view('Admin/Templates/header');
		$this->load->view('Admin/Home', $isi);
		$this->load->view('Admin/Templates/footer');
	}

	public function upload_kegiatan()
	{
		$id = rand(1111, 9999);
		$nama_kegiatan = $this->input->post('nama_kegiatan');
		$gambar = $this->input->post('gambar');

		$data = array(
			'id_kegiatan' => $id,
			'nama_kegiatan' =>  $nama_kegiatan,
			'gambar' => "http://drive.google.com/uc?export=view&id=" . $gambar,
		);

		$this->db->insert('kegiatan', $data);
		redirect('Admin_post');
	}

	public function detail_kegiatan($id_kegiatan)
	{
		$this->Model_keamanan->getKeamanan();
		$isi['kegiatan'] = $this->Model_kegiatan->detail_kegiatan($id_kegiatan);
		$isi['gambar'] = $this->Model_kegiatan->gambar_kegiatan($id_kegiatan);
		$isi['content'] = 'Admin/Post/tampilan_detail_kegiatan';
		$this->load->view('Admin/Templates/header');
		$this->load->view('Admin/Home', $isi);
		$this->load->view('Admin/Templates/footer');
	}

	public function upload_gambar_kegiatan()
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
								'id_kegiatan_gambar'              => $cells[0],
								'id_kegiatan'      => $cells[1],
								'gambar'        => $cells[2],
							);
							array_push($save, $data);
						}
						$numRow++;
					}
					$this->Model_kegiatan->simpanGambarKegiatan($save);
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
					redirect('Admin_post');
				}
			} else {
				echo "Error :" . $this->upload->display_errors();
			}
		}
	}
}
