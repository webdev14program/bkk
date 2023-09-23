<div class="alert alert-success" role="alert">
    <h3 class="text-center font-weight-bold">Data Lowongan Kerja</h3>
</div>

<a class="btn btn-primary" href="<?= base_url() ?>Dashboard/tambah_lowongan">Tambah Lowongan</a>

<div class="card mt-4">
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-striped table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Logo Perusahaan</th>
                        <th scope="col">Nama Perusahaan</th>
                        <th scope="col">Bagian</th>
                        <th scope="col">Tanggal Dibuat</th>
                        <th scope="col">Tanggal Akhir</th>

                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <?php
                        $no = 1;
                        foreach ($lowongan as $row) {
                        ?>
                            <td><?php echo $no++; ?></td>
                            <td>
                                <h5 class="text-center d-flex justify-content-center"><img src="<?= base_url() ?>assets/lowongan/<?= $row['gambar'] ?>" style="width: 120px;height: 80px;"></h5>
                            </td>
                            <td><?= $row['nama_perusahaan'] ?></td>
                            <td><?= $row['bagian'] ?></td>
                            <td><?= $row['tgl_dibuat'] ?></td>
                            <td><?= $row['tgl_akhir'] ?></td>
                            <td>
                                <h5>
                                    <a href="#">Hapus</a>
                                </h5>
                            </td>
                    </tr>
                <?php } ?>
                </tbody>
            </table>
        </div>
    </div>
</div>