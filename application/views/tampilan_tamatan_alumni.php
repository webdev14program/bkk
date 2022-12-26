<div class="container">
    <div class="row">
        <div class="col-md">
            <div class="card">
                <div class="card-header bg-primary">
                    <h4 class="text-uppercase text-white text-center font-wight-bold">Data Tamatan penelusuran alumn SMK Tunas Harapan</h4>
                </div>
                <div class="card-body">
                    <div class="card">
                        <div class="card-body">
                            <form action="<?= base_url() ?>Home/simpan" method="POST">
                                <div class="card">
                                    <div class="card">
                                        <div class="card-body bg-primary">
                                            <h5 class="text-center text-uppercase text-white">biodata alumni</h5>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <div class="form-group">
                                            <label>Nama Alumni</label>
                                            <input type="text" class="form-control" name="nama">
                                        </div>
                                        <div class="form-group">
                                            <label>Tahun Lulus</label>
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" name="tahun_lulus">
                                                <label class="form-check-label">
                                                    2019
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" name="tahun_lulus">
                                                <label class="form-check-label">
                                                    2020
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" name="tahun_lulus">
                                                <label class="form-check-label">
                                                    2021
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" name="tahun_lulus">
                                                <label class="form-check-label">
                                                    2022
                                                </label>
                                            </div>
                                            <div class="form-group">
                                                <label>Kompetensi keahlian (Jurusan)</label>
                                                <select class="form-control" name="mapel">
                                                    <OPtion class="bg-info text-white" disabled>Kompetensi keahlian (Jurusan)</OPtion>
                                                    <?php foreach ($kelas_jurusan as $row) { ?>
                                                        <option value="<?= $row['nama_kelas_jurusan']; ?>"><?= $row['kode']; ?> | <?= $row['nama_kelas_jurusan']; ?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label>Nomor WA/telpon</label>
                                                <input type="number" class="form-control" name="nama">
                                            </div>
                                            <div class="form-group">
                                                <label>Email</label>
                                                <input type="email" class="form-control" name="nama">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleFormControlTextarea1">Alamat Alumni</label>
                                                <textarea class="form-control" rows="2"></textarea>
                                            </div>
                                            <div class="form-group">
                                                <label>Kegiatan Setelah Lulus</label>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio">
                                                    <label class="form-check-label" for="exampleRadios1">
                                                        Bekerja
                                                    </label>
                                                </div>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio">
                                                    <label class="form-check-label" for="exampleRadios1">
                                                        Wirausaha
                                                    </label>
                                                </div>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio">
                                                    <label class="form-check-label" for="exampleRadios1">
                                                        Kuliah
                                                    </label>
                                                </div>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio">
                                                    <label class="form-check-label" for="exampleRadios1">
                                                        Belum bekerja/belum kuliah
                                                    </label>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md">
                                        <div class="card mt-3">
                                            <div class="card-body">
                                                <div class="card">
                                                    <div class="card-body bg-primary">
                                                        <h5 class="text-center text-uppercase text-white">BOKS YANG BEKERJA <br> Untuk yang belum bekerja mengisi 0 (Nol)</h5>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label>Nama Perusahaan</label>
                                                    <input type="text" class="form-control" name="nama">
                                                </div>
                                                <div class="form-group">
                                                    <label>Alamat Perusahaan / Industri/ Lembaga</label>
                                                    <textarea class="form-control" rows="2"></textarea>
                                                </div>
                                                <div class="form-group">
                                                    <label>Nomor Telp. Perusahaan /Industri /Lembaga</label>
                                                    <input type="number" class="form-control" name="nama">
                                                </div>
                                                <div class="form-group">
                                                    <label> Sektor Alamat Perusahaan /Industri /Lembaga</label>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio">
                                                        <label class="form-check-label" for="exampleRadios1">
                                                            Manufaktur
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio">
                                                        <label class="form-check-label" for="exampleRadios1">
                                                            Jasa
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio">
                                                        <label class="form-check-label" for="exampleRadios1">
                                                            Keuangan
                                                        </label>
                                                    </div>
                                                    <input type="text" class="form-control" name="nama" placeholder="Lainnya">
                                                </div>
                                                <div class="form-group">
                                                    <label>Tanggal Mulai Masuk Kerja</label>
                                                    <input type="date" class="form-control" name="nama">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md">
                                        <div class="card mt-3">
                                            <div class="card-body">
                                                <div class="card">
                                                    <div class="card-body bg-primary">
                                                        <h5 class="text-center text-uppercase text-white">BOKS YANG KULIAH <br> Untuk yang Tidak Kuliah mengisi 0 (Nol)</h5>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label>Nama Perguruan tinggi/Universitas</label>
                                                    <input type="text" class="form-control" name="nama">
                                                </div>
                                                <div class="form-group">
                                                    <label>Alamat Perguruan tinggi/ Universitas</label>
                                                    <textarea class="form-control" rows="2"></textarea>
                                                </div>
                                                <div class="form-group">
                                                    <label>Fakultas</label>
                                                    <input type="text" class="form-control" name="nama">
                                                </div>
                                                <div class="form-group">
                                                    <label>Jurusan/Prodi</label>
                                                    <input type="text" class="form-control" name="nama">
                                                </div>
                                                <div class="form-group">
                                                    <label>Jenjang</label>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio">
                                                        <label class="form-check-label" for="exampleRadios1">
                                                            Diploma 3 (D3)
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio">
                                                        <label class="form-check-label" for="exampleRadios1">
                                                            Diploma 4 (D4)
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio">
                                                        <label class="form-check-label" for="exampleRadios1">
                                                            Strata 1 (S1)
                                                        </label>
                                                    </div>
                                                    <input type="text" class="form-control" name="nama" placeholder="Lainnya">
                                                </div>
                                                <div class="form-group">
                                                    <label>Tanggal Mulai Masuk Kuliah</label>
                                                    <input type="date" class="form-control" name="nama">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md">
                                        <div class="card mt-3">
                                            <div class="card-body">
                                                <div class="card">
                                                    <div class="card-body bg-primary">
                                                        <h5 class="text-center text-uppercase text-white">BOKS YANG WIRAUSAHA <br> Untuk yang Tidak Wirausaha mengisi 0 (Nol)</h5>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label>Nama Usaha</label>
                                                    <input type="text" class="form-control" name="nama">
                                                </div>
                                                <div class="form-group">
                                                    <label>Alamat Usaha</label>
                                                    <textarea class="form-control" rows="2"></textarea>
                                                </div>
                                                <div class="form-group">
                                                    <label>Nomor Telp. Tempat usaha</label>
                                                    <input type="number" class="form-control" name="nama">
                                                </div>
                                                <div class="form-group">
                                                    <label>Bidang Usaha (pilih salah satu)</label>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio">
                                                        <label class="form-check-label" for="exampleRadios1">
                                                            Perdagangan
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio">
                                                        <label class="form-check-label" for="exampleRadios1">
                                                            Kontraktor
                                                        </label>
                                                    </div>
                                                    <input type="text" class="form-control" name="nama" placeholder="Lainnya">
                                                </div>
                                                <div class="form-group">
                                                    <label>Jumlah Karyawan</label>
                                                    <input type="number" class="form-control" name="nama">
                                                </div>
                                                <div class="form-group">
                                                    <label>Tanggal Membuka Usaha</label>
                                                    <input type="date" class="form-control" name="nama">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md">
                                        <div class="card mt-3">
                                            <div class="card-body">
                                                <div class="card">
                                                    <div class="card-body bg-primary">
                                                        <h5 class="text-center text-uppercase text-white">BOKS YANG BELUM BEKERJA/ BELUM KULIAH <br> Untuk yang SUDAH Bekerja/Kuliah dan Wirausaha mengisi data 0 (Nol)</h5>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label>Kegiatan yang saudara lakukan sekarang</label>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio">
                                                        <label class="form-check-label" for="exampleRadios1">
                                                            Mencari Pekerjaan
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio">
                                                        <label class="form-check-label" for="exampleRadios1">
                                                            Mencari Perguruan tinggi/ Universitas
                                                        </label>
                                                    </div>
                                                    <input type="text" class="form-control" name="nama" placeholder="Lainnya">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <h5 class="text-center text-uppercase font-weight-bold">
                                    <button type="submit" class="btn btn-primary mt-4">Simpan</button>
                                </h5>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>