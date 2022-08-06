<main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs bg-primary">
        <div class="container">

            <div class="d-flex justify-content-center">
                <h2 class="text-center text-white font-weight-bold" style="text-transform: uppercase;">Lamar Lowongan Kerja </h2>
            </div>

        </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Services Section ======= -->
    <section id="services" class="services">
        <div class="container">
            <div class="row">
                <div class="col-md-3 mt-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="text-center"><img src="<?= base_url() ?>assets/lowongan/<?= $lowongan['gambar'] ?>" style="width: 150px;height: 150px;"></h5>
                        </div>
                    </div>
                </div>
                <div class="col-md-8 mt-3">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="text-justify font-weight-bold"> <?= $lowongan['bagian'] ?></h4>
                            <h5 class="text-justify mt-3">Nama Perusahaan : <?= $lowongan['nama_perusahaan'] ?></h5>
                            <hr>
                            <h5 class="text-justify">Lamaran ditutup pada : <?= $lowongan['tgl_akhir'] ?></h5>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md mt-3">
                    <div class="card">
                        <div class="card-body">
                            <form method="POST" action="<?= base_url() ?>Lowongan_kerja/tambah_lamar_loker" enctype="multipart/form-data">
                                <input type="hidden" name="id_lowongan" value="<?= $lowongan['id_lowongan'] ?>" class="form-control">
                                <div class="row">
                                    <div class="col-md">
                                        <div class="container">
                                            <div class="row">
                                                <div class="col-md bg-success rounded">
                                                    <h5 class="text-center text-white font-weight-bold">Biodata</h5>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label">Nama </label>
                                                    <input type="text" name="nama" class="form-control" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Tempat Lahir</label>
                                                <input type="text" name="tempat_lahir" class="form-control" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Tanggal Lahir ( contoh : 25 Desember 2021)</label>
                                                <input type="text" name="tgl_lahir" class="form-control" required>
                                            </div>
                                            <div class="form-group">
                                                <label">Alamat </label>
                                                    <input type="text" name="alamat" class="form-control" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Nomor HP</label>
                                                <input type="number" name="hp" class="form-control" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Jenis Kelamin</label>
                                                <select class="form-control" name="jenis_kelamin" required>
                                                    <option>Laki-Laki</option>
                                                    <option>Perempuan</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label>Agama</label>
                                                <select class="form-control" name="agama" required>
                                                    <option>Islam</option>
                                                    <option>Kristen</option>
                                                    <option>Katolik</option>
                                                    <option>Hindu</option>
                                                    <option>Budha</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label>Kewarganegaraan</label>
                                                <select class="form-control" name="kewarganegaraan" required>
                                                    <option>Indonesia</option>
                                                    <option>Asing</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label>Satus</label>
                                                <select class="form-control" name="status" required>
                                                    <option>Sudah Menikah</option>
                                                    <option>Belum Menikah</option>
                                                    <option>Cerai</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md">
                                        <div class="container">
                                            <div class="row">
                                                <div class="col-md bg-success rounded">
                                                    <h5 class="text-center text-white font-weight-bold"> Pendidikan</h5>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label">SD</label>
                                                    <input type="text" name="sd" class="form-control" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Tahun SD (Contoh : 1999 - 2000)</label>
                                                <input type="text" name="tahun_sd" class="form-control" required>
                                            </div>
                                            <div class="form-group">
                                                <label">SMP</label>
                                                    <input type="text" name="smp" class="form-control" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Tahun SMP (Contoh : 1999 - 2000)</label>
                                                <input type="text" name="tahun_smp" class="form-control" required>
                                            </div>
                                            <div class="form-group">
                                                <label">SMK </label>
                                                    <input type="text" name="smk" class="form-control" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Tahun SMK (Contoh : 1999 - 2000)</label>
                                                <input type="text" name="tahun_smk" class="form-control" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Jurusan</label>
                                                <select class="form-control" name="jurusan" required>
                                                    <option>Teknik Komputer dan Jaringan</option>
                                                    <option>Akutansi dan Keuangan Lembaga</option>
                                                    <option>Otomatisasi dan Tata Kelola Perkantoran</option>
                                                    <option>Bisnis Daring dan Pemasaran</option>
                                                </select>
                                            </div>


                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md bg-success rounded">
                                        <h5 class="text-center text-white font-weight-bold">Keahlian</h5>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label">Kempuan </label>
                                        <textarea required class="form-control" name="kemampuan" id="detail"></textarea>
                                </div>
                                <div class="form-group">
                                    <label">Background Singkat (Tentang pelamar)</label>
                                        <textarea required class="form-control" name="background" id="detail2"></textarea>
                                </div>
                                <div class="form-group">
                                    <label>Foto Mengunakan Kemeja putih dan jas hitam, wanita menggnakan blazer hitam dan kemeja putih</label>
                                    <input type="file" class="form-control-file" name="gambar" required>
                                </div>
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Lowongan Kerja -->

</main><!-- End #main -->