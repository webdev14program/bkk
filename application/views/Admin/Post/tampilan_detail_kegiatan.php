<div class="row">
    <div class="col-md">
        <div class="alert alert-success" role="alert">
            <h3 class="text-center font-weight-bold">Detail Kegiatan</h3>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md">
        <div class="card">
            <div class="card-body">
                <a class="btn btn-danger btn-sm text-uppercase font-weight-bold" href="<?= base_url() ?>Admin_post">Kembali</a>
                <button type="button" class="btn btn-primary btn-sm text-uppercase font-weight-bold" data-toggle="modal" data-target="#exampleModal">
                    Upload Gambar
                </button>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md mt-2">
        <div class="card">
            <div class="card-header bg-primary text-white text-center">
                <h4><?= $kegiatan['nama_kegiatan'] ?></h4>
            </div>
            <div class="card-body">
                <h5 class="text-center">
                    <img src="<?= $kegiatan['gambar'] ?>" alt="<?= $kegiatan['nama_kegiatan'] ?>" style="width: 450px;height: 400px;">
                </h5>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md mt-2">
        <div class="card">
            <div class="card-header bg-primary text-white text-center">
                <h4>GAMBAR</h4>
            </div>
            <div class="card-body">
                <div class="row">
                    <?php foreach ($gambar as $row) : ?>
                        <div class="col-md mt-2 d-flex align-items-center justify-content-center mb-4">
                            <div class="card" style="width: 20rem;">
                                <div class="card-body">
                                    <h5 class="text-center mt-2"><img src="<?= $row['gambar'] ?>" class="card-img-top" style="width: 300px;height: 250px;"></h5>
                                </div>
                            </div>
                        </div>
                    <?php endforeach; ?>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-primary text-white">
                <h5 class="modal-title text-uppercase font-weight-bold" id="exampleModalLabel">Upload Gambar</h5>
            </div>
            <div class="modal-body">
                <?= form_open_multipart('Admin_post/upload_gambar_kegiatan'); ?>

                <div class="form-group">
                    <input type="file" class="form-control-file" name="excel">
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