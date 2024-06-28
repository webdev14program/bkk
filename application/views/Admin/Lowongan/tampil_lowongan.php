<div class="alert alert-success" role="alert">
    <h3 class="text-center font-weight-bold">Data Lowongan Kerja</h3>
</div>

<div class="row">
    <div class="col-md">
        <div class="card">
            <div class="card-body">
                <a class="btn btn-primary btn-sm" href="<?= base_url() ?>Dashboard/tambah_lowongan">Tambah Lowongan</a>
            </div>
        </div>
    </div>
</div>


<div class="card mt-4">
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-striped table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">ID Lowongan</th>
                        <!-- <th scope="col">Logo Perusahaan</th> -->
                        <th scope="col">Nama Perusahaan</th>
                        <th scope="col">Bagian</th>
                        <th scope="col">Tanggal Dibuat</th>
                        <th scope="col">Tanggal Akhir</th>
                        <th scope="col">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <?php
                        $no = 1;
                        foreach ($lowongan as $row) {
                        ?>
                            <td><?php echo $no++; ?></td>
                            <td class="text-center"><?= $row['id_lowongan'] ?></td>
                            <!-- <td>
                                <h5 class="text-center d-flex justify-content-center"><img src="<?= base_url() ?>assets/lowongan/<?= $row['gambar'] ?>" style="width: 120px;height: 80px;"></h5>
                            </td> -->
                            <td><?= $row['nama_perusahaan'] ?></td>
                            <td><?= $row['bagian'] ?></td>
                            <td><?= $row['tgl_dibuat'] ?></td>
                            <td><?= $row['tgl_akhir'] ?></td>
                            <td>
                                <h5 class="text-center">
                                    <a class="btn btn-danger btn-sm text-uppercase font-weight-bolder" href="<?= base_url() ?>Dashboard/hapus__id_lowongan/<?= $row['id_lowongan'] ?>">Hapus</a>
                                </h5>
                            </td>
                    </tr>
                <?php } ?>
                </tbody>
            </table>
        </div>
    </div>
</div>