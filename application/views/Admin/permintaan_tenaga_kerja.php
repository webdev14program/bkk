<div class="alert alert-success" role="alert">
    <h3 class="text-center font-weight-bold">Permintaan Tenaga Kerja</h3>
</div>

<!-- <div class="row">
    <div class="col-md">
        <div class="card">
            <div class="card-body">
                <button type="button" class="btn btn-primary btn-sm text-uppercase font-weight-bold" data-toggle="modal" data-target="#exampleModal">
                    Tambah Permintaan Tenaga Kerja
                </button>
                <a class="btn btn-danger btn-sm text-uppercase font-weight-bold" href="<?= base_url() ?>Dashboard/hapus_all_permintaan_tenaga_kerja"><i class="fas fa-trash"></i> Hapus Semua Data Permintaan Tenaga Kerja</a>
            </div>
        </div>
    </div>
</div> -->

<div class="row mb-2 mt-2">
    <div class="col-md">
        <div class="card">
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-striped table-bordered text-uppercase text-center" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Tahun Lulus</th>
                                <th>Jumlah Perusahaan</th>
                                <th>Jurusan AKL</th>
                                <th>Jurusan BDP</th>
                                <th>Jurusan OTKP</th>
                                <th>Jurusan TKJ</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody class="text-uppercase">
                            <tr>
                                <?php
                                $no = 1;
                                foreach ($data_perusahaan as $row) {
                                ?>
                                    <td><?php echo $no++; ?></td>
                                    <td><?= $row['tahun_lulus']; ?></td>
                                    <td><?= $row['perusahaan']; ?> Perusahaan</td>
                                    <td><?= $row['akl']; ?> SISWA</td>
                                    <td><?= $row['bdp']; ?> SISWA</td>
                                    <td><?= $row['otkp']; ?> SISWA</td>
                                    <td><?= $row['tkj']; ?> SISWA</td>
                                    <td><a class="btn btn-danger btn-sm" href="<?= base_url() ?>Dashboard/print_permintaan_tenaga_kerja/<?= $row['tahun_lulus']; ?>" target="_blank"><i class="fas fa-print"></i> Print</a></td>
                            </tr>
                        <?php } ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <h5 class="modal-title text-white text-uppercase">Tambah Permintaan Tenaga Kerja</h5>
            </div>
            <div class="modal-body">
                <form action="<?= base_url() ?>Dashboard/simpan_permintaan_tenaga_kerja" method="POST">
                    <div class="row">
                        <div class="col-md">
                            <h3 class="text-center text-uppercase">Data <strong>Perusahaan</strong></h3>
                            <div class="form-group">
                                <label>Nama Perusahaan</label>
                                <input type="text" class="form-control" name="nama_perusahaan">
                            </div>
                            <div class="form-group">
                                <label for="exampleFormControlTextarea1">Alamat Peusahaan</label>
                                <textarea class="form-control" rows="1" name="alamat_perusahaan"></textarea>
                            </div>
                            <div class="form-group">
                                <label>Telpon Perusahaan</label>
                                <input type="text" class="form-control" name="tlpn_perusahaan">
                            </div>
                            <div class="form-group">
                                <label>Bidang Perusahaan</label>
                                <input type="text" class="form-control" name="bidang_perusahaan">
                            </div>
                        </div>
                        <div class="col-md">
                            <h3 class="text-center text-uppercase">Data <strong>HRD</strong></h3>
                            <div class="form-group">
                                <label>Nama </label>
                                <input type="text" class="form-control" name="nama">
                            </div>
                            <div class="form-group">
                                <label>Jabatan </label>
                                <input type="text" class="form-control" name="jabatan">
                            </div>
                            <div class="form-group">
                                <label>Telpon/HP</label>
                                <input type="text" class="form-control" name="no_telpon">
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input type="text" class="form-control" name="email">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-8">
                            <h3 class="text-center text-uppercase">Kebutuhan <strong>Karyawan</strong></h3>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md">
                                        <label>Akuntansi dan Keuangan Lembaga</label>
                                    </div>
                                    <div class="col-md">
                                        <input type="number" class="form-control" value="0" name="akl">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md">
                                        <label>Bisnis Daring dan Pemasaran</label>
                                    </div>
                                    <div class="col-md">
                                        <input type="number" class="form-control" value="0" name="bdp">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md">
                                        <label>Otomatisasi dan Tata Kelola Perkantoran</label>
                                    </div>
                                    <div class="col-md">
                                        <input type="number" class="form-control" value="0" name="otkp">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md">
                                        <label>Teknik Komputer dan Jaringan</label>
                                    </div>
                                    <div class="col-md">
                                        <input type="number" class="form-control" value="0" name="tkj">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Simpan</button>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>