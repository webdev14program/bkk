<div class="alert alert-success" role="alert">
    <h3 class="text-center font-weight-bold">Kerja Sama Perusahaan</h3>
</div>

<div class="row">
    <div class="col-md">
        <div class="card">
            <div class="card-body">
                <a class="btn btn-primary btn-sm text-uppercase font-weight-bold" href="<?= base_url() ?>Dashboard/tambah_kerjasama">Tambah Perusahaan</a>
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
                        <th scope="col">Logo Perusahaan</th>
                        <th scope="col">Nama Perusahaan</th>
                        <th scope="col">Profil Perusahaan</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <?php
                        $no = 1;
                        foreach ($perusahaan as $row) {
                        ?>
                            <td><?php echo $no++; ?></td>
                            <td>
                                <h5 class="text-center"><img src="<?= base_url() ?>assets/upload/<?= $row['gambar'] ?>" style="width: 120px;height: 80px;"></h5>
                            </td>
                            <td><?= $row['nama'] ?></td>
                            <td><?= $row['profil'] ?></td>
                    </tr>
                <?php } ?>
                </tbody>
            </table>
        </div>
    </div>
</div>