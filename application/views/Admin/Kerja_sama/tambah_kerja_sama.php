<div class="alert alert-success" role="alert">
    <h3 class="text-center font-weight-bold">Tambah Kerja Sama Perusahaan</h3>
</div>

<div class="row">
    <div class="col">
        <div class="card">
            <div class="card-body">
                <form method="POST" action="<?= base_url() ?>Dashboard/upload_perusahaan" enctype="multipart/form-data">
                    <div class="form-group">
                        <label>Nama Perusahaan</label>
                        <input type="text" name="perusahaan" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Profil Singkat Perusahaan</label>
                        <textarea class="form-control" name="profil" rows="3"></textarea>
                    </div>
                    <div class="form-group">
                        <label>Logo Perusahaan</label>
                        <input type="text" name="gambar" class="form-control-file">
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>
    </div>
</div>