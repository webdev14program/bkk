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
		$isi['tahun'] = $this->Model_utama->tahun_aktif();
		$isi['bekerja'] = $this->Model_pelamar->homeBekerja();
		$isi['kuliah'] = $this->Model_pelamar->homeKuliah();
		$isi['wirausaha'] = $this->Model_pelamar->homeWirausaha();
		$isi['belum_bekerja'] = $this->Model_pelamar->homeBelumBekerja();
		$this->load->view('Admin/Templates/header');
		$this->load->view('Admin/Home', $isi);
		$this->load->view('Admin/Templates/footer');
	}

	public function kerja_sama_perusahaan()
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
		redirect('Dashboard/kerja_sama_perusahaan');
	}

	public function upload_mou_perusahaan()
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
								'id_perusahaan'              => $cells[0],
								'nama'      => $cells[1],
								'profil'        => $cells[2],
								'gambar'          => $cells[3],
							);
							array_push($save, $data);
						}
						$numRow++;
					}
					$this->Model_perusahaan->simpan($save);
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
					redirect('Dashboard/kerja_sama_perusahaan');
				}
			} else {
				echo "Error :" . $this->upload->display_errors();
			}
		}
	}

	public function detail_perusahaan($id_perusahaan)
	{
		$isi['kerja_sama'] = $this->Model_perusahaan->detail_kerjasama_perusahaan($id_perusahaan);
		$isi['content'] = 'Admin/Kerja_sama/detail_kerja_sama';
		$this->load->view('Admin/Templates/header');
		$this->load->view('Admin/Home', $isi);
		$this->load->view('Admin/Templates/footer');
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

	public function hapus__id_lowongan($id_lowongan)
	{
		$this->db->where('id_lowongan', $id_lowongan);
		$this->db->delete('lowongan');
		redirect('Dashboard/lowongan');
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

	public function hapus_all_pelamar_loker()
	{
		$this->db->empty_table('lamar_loker');
		$this->session->set_flashdata('pesan', '<div class="row">
        <div class="col-md mt-2">
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                <strong>Data Pelamar Loker  Berhasil Di Hapus</strong>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

        </div>
        </div>');
		redirect('Dashboard/pelamar_loker');
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
		$this->session->set_flashdata('pesan', '<div class="row">
        <div class="col-md mt-2">
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                <strong>Data Alumni Berhasil Di Hapus</strong>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

        </div>
        </div>');
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
								'status'          => $cells[3],
								'tahun_lulus'          => $cells[4],
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

	public function permintaan_tenaga_kerja()
	{
		$this->Model_keamanan->getKeamanan();
		$isi['data_perusahaan'] = $this->Model_perusahaan->permintaan_tenaga_kerja();
		$isi['content'] = 'Admin/permintaan_tenaga_kerja';
		$this->load->view('Admin/Templates/header');
		$this->load->view('Admin/Home', $isi);
		$this->load->view('Admin/Templates/footer');
	}

	public function hapus_all_permintaan_tenaga_kerja()
	{
		$this->db->empty_table('permintaan_tenaga_kerja');
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
		redirect('Dashboard/permintaan_tenaga_kerja');
	}

	public function simpan_permintaan_tenaga_kerja()
	{
		$nama_perusahaan = $this->input->post('nama_perusahaan');
		$alamat_perusahaan = $this->input->post('alamat_perusahaan');
		$tlpn_perusahaan = $this->input->post('tlpn_perusahaan');
		$bidang_perusahaan = $this->input->post('bidang_perusahaan');
		$nama = $this->input->post('nama');
		$jabatan = $this->input->post('jabatan');
		$no_telpon = $this->input->post('no_telpon');
		$email = $this->input->post('email');
		$akl = $this->input->post('akl');
		$bdp = $this->input->post('bdp');
		$otkp = $this->input->post('otkp');
		$tkj = $this->input->post('tkj');

		$data = array(
			'id_permintaan_tenaga_kerja' => rand(11111111, 99999999),
			'nama_perusahaan' => $nama_perusahaan,
			'alamat_perusahaan' => $alamat_perusahaan,
			'tlpn_perusahaan' => $tlpn_perusahaan,
			'bidang_perusahaan' => $bidang_perusahaan,
			'nama' => $nama,
			'jabatan' => $jabatan,
			'no_telpon' => $no_telpon,
			'email' => $email,
			'akl' => $akl,
			'bdp' => $bdp,
			'otkp' => $otkp,
			'tkj' => $tkj,
		);

		$this->db->insert('permintaan_tenaga_kerja', $data);
		redirect('Dashboard/permintaan_tenaga_kerja');
	}

	public function tracer_study()
	{
		$this->Model_keamanan->getKeamanan();
		$isi['tracer_study'] = $this->Model_pelamar->data_tracer_study();
		$isi['content'] = 'Admin/data_tracer_study';
		$this->load->view('Admin/Templates/header');
		$this->load->view('Admin/Home', $isi);
		$this->load->view('Admin/Templates/footer');
	}

	public function hapus_all_tracer_study()
	{
		$this->db->empty_table('tracer_study');
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
		redirect('Dashboard/tracer_study');
	}

	public function  upload_tracer_study()
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
								'id_tarcert_study' => $cells[0],
								'pengaku_kepentinghan' => $cells[1],
								'religius' => $cells[2],
								'jujur' => $cells[3],
								'tanggung_jawab' => $cells[4],
								'disiplin' => $cells[5],
								'pengetahuan' => $cells[6],
								'teknologi' => $cells[7],
								'budaya' => $cells[8],
								'kreatifitas' => $cells[9],
								'produktif' => $cells[10],
								'komunikasi' => $cells[11],
								'kolaborasi' => $cells[12],
								'tahun' => $cells[13]
							);
							array_push($save, $data);
						}
						$numRow++;
					}
					$this->Model_pelamar->simpanTracerStudy($save);
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
					redirect('Dashboard/tracer_study');
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

	public function print_alumni($tahun_lulus)
	{
		$isi['alumni'] = $this->Model_pelamar->PrintdataAlumni($tahun_lulus);
		$isi['header'] = $this->Model_pelamar->PrintdataAlumniHeader($tahun_lulus);
		$this->load->view('Admin/print_alumni_pertahun', $isi);
	}

	public function print_permintaan_tenaga_kerja($tahun_lulus)
	{
		$isi['perusahaan'] = $this->Model_perusahaan->print_permintaan_tenaga_kerja($tahun_lulus);
		$isi['header'] = $this->Model_pelamar->PrintdataAlumniHeader($tahun_lulus);
		$this->load->view('Admin/print_permintaan_tenaga_kerja', $isi);
	}

	public function print_tracer_study($tahun)
	{
		$isi['tracer_study'] = $this->Model_pelamar->print_tracer_study($tahun);
		// $isi['header'] = $this->Model_pelamar->PrintdataAlumniHeader($tahun_lulus);
		$this->load->view('Admin/print_tracer_study', $isi);
	}

	public function logout()
	{
		$this->session->sess_destroy();
		redirect('/admin');
	}
}
