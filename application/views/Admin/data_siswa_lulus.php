<div class="row">
    <div class="col-md">
        <div class="card">
            <div class="card-body">
                <button type="button" class="btn btn-primary btn-sm text-uppercase font-weight-bold" data-toggle="modal" data-target="#exampleModal">
                    Upload data alumni
                </button>
                <a class="btn btn-danger btn-sm text-uppercase font-weight-bold" href="<?= base_url() ?>Dashboard/hapus_all_alumni"><i class="fas fa-trash"></i> Hapus Semua Data Alumni</a>
            </div>
        </div>
    </div>
</div>
<?= $this->session->flashdata('pesan') ?>
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
                                <th>Bekerja</th>
                                <th>Kuliah</th>
                                <th>Wirausaha</th>
                                <th>Belum Bekerja/ Belum Kuliah</th>
                                <th>Total </th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <?php
                                $no = 1;
                                foreach ($alumni as $row) {
                                ?>
                                    <td><?php echo $no++; ?></td>
                                    <td><?= $row['tahun_ajaran']; ?></td>
                                    <td><?= $row['bekerja']; ?> SISWA (<?= $row['precent_bekerja']; ?> %)</td>
                                    <td><?= $row['kuliah'] ?> SISWA (<?= $row['percent_kuliah']; ?> %)</td>
                                    <td><?= $row['Wirausaha'] ?> SISWA (<?= $row['percent_wirausaha']; ?> %)</td>
                                    <td><?= $row['Belum_bekerja_belum_kuliah'] ?> SISWA (<?= $row['percent_Belum_bekerja']; ?> %)</td>
                                    <td><?= $row['total']; ?> SISWA</td>
                                    <td><a class="btn btn-danger btn-sm" href="<?= base_url() ?>Dashboard/print_alumni/<?= $row['tahun_lulus']; ?>" target="_blank"><i class="fas fa-print"></i> Print</a></td>
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
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-primary text-white">
                <h5 class="modal-title text-uppercase font-weight-bold" id="exampleModalLabel"> Upload data alumni</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <?= form_open_multipart('Dashboard/upload_data_alumni'); ?>
                <div class="form-group">
                    <input type="file" name="excel" class="form-control-file" name="file" required accept=".xlsx">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" name="submit" value="upload" class="btn btn-primary">Upload</button>
                </div>
                <?= form_close(); ?>
            </div>
        </div>
    </div>
</div>