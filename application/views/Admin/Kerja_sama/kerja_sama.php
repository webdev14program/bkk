<div class="alert alert-success" role="alert">
    <h3 class="text-center font-weight-bold">Kerja Sama Perusahaan</h3>
</div>

<div class="row">
    <div class="col-md">
        <div class="card">
            <div class="card-body">
                <button type="button" class="btn btn-primary btn-sm text-uppercase font-weight-bold" data-toggle="modal" data-target="#uploadkerjasama">
                    Tambah kerja sama
                </button>
            </div>
        </div>
    </div>
</div>


<div class="row">
    <?php foreach ($perusahaan as $row) : ?>
        <div class="col-md mt-2 d-flex align-items-center justify-content-center mb-4">
            <div class="card" style="width: 20rem;">
                <h5 class="text-center"><img src="<?= $row['gambar'] ?>" class="card-img-top" style="width: 150px;height: 100px;"></h5>
                <div class="card-body">
                    <p class="card-text text-center"><?= $row['nama'] ?></p>
                </div>
            </div>
        </div>
    <?php endforeach; ?>
</div>

<div class="modal fade" id="uploadkerjasama" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-primary text-white">
                <h5 class="modal-title text-upercase font-weight-bold" id="exampleModalLabel">Upload Kerja sama</h5>
            </div>
            <div class="modal-body">
                <form method="POST" action="<?= base_url() ?>Dashboard/upload_perusahaan" enctype="multipart/form-data">
                    <div class="form-group">
                        <label>Nama Perusahaan</label>
                        <input type="text" name="perusahaan" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Logo Perusahaan</label>
                        <input type="text" name="gambar" class="form-control-file">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save changes</button>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>