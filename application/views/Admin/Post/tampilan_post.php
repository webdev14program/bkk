<div class="row">
    <div class="col-md">
        <div class="alert alert-success" role="alert">
            <h3 class="text-center font-weight-bold">Kegiatan</h3>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md mt-2">
        <div class="card">
            <div class="card-body">
                <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#exampleModal">
                    Tambah Kegiatan
                </button>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <?php foreach ($kegiatan as $row) : ?>
        <div class="col-md mt-2 d-flex align-items-center justify-content-center mb-4">
            <div class="card" style="width: 20rem;">
                <div class="card-header">
                    <h5 class="text-uppercase text-center"><?= $row['id_kegiatan'] ?> <br> <?= $row['nama_kegiatan'] ?> </h5>
                </div>
                <div class="card-body">
                    <h5 class="text-center mt-2"><img src="<?= $row['gambar'] ?>" class="card-img-top" style="width: 275px;height: 225px;"></h5>
                </div>
                <div class="card-footer text-muted">
                    <h5 class="text-center">
                        <a class="btn btn-primary btn-sm text-uppercase font-weight-bold" href="<?= base_url() ?>Dashboard/detail_kegiatan/<?= $row['id_kegiatan'] ?>">Detail</a>
                    </h5>
                </div>
            </div>
        </div>
    <?php endforeach; ?>
</div>


<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-primary text-white font-weight-bold">
                <h5 class="modal-title" id="exampleModalLabel">Tambah Kegiatan</h5>

            </div>
            <div class="modal-body">
                <form method="POST" action="<?= base_url() ?>Dashboard/upload_kegiatan" enctype="multipart/form-data">
                    <div class="form-group">
                        <label>Nama Kegiatan</label>
                        <input type="text" name="nama_kegiatan" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>ID Gambar</label>
                        <input type="text" name="gambar" class="form-control">
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