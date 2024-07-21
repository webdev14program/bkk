<div class="alert alert-success" role="alert">
    <h3 class="text-center font-weight-bold">Tambah Lowongan Kerja</h3>
</div>

<div class="row">
    <div class="col-md">
        <div class="card">
            <div class="card-body">
                <form action="<?= base_url() ?>Dashboard/upload_lowongan" method="POST" enctype="multipart/form-data">
                    <div class="row">
                        <div class="col-md">
                            <div class="form-group">
                                <label>Nama Perusahaan</label>
                                <input type="text" class="form-control" name="nama_perusahaan">
                            </div>
                        </div>
                        <div class="col-md">
                            <div class="form-group">
                                <label>Bagian</label>
                                <input type="text" class="form-control" name="bagian">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Detail Lowongan</label>
                        <textarea class="form-control" name="detail" id="detail" rows="3"></textarea>
                    </div>

                    <div class="row">
                        <div class="col-md">
                            <div class="form-group">
                                <label>Tanggal dibuat</label>
                                <input type="text" class="form-control datepicker" name="tgl_dibuat">
                            </div>
                        </div>
                        <div class="col-md">
                            <div class="form-group">
                                <label>Tanggal berakhir</label>
                                <input type="text" class="form-control datepicker" name="tgl_akhir">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Logo Perusahaan</label>
                        <input type="text" class="form-control-file" name="gambar">
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>
    </div>
</div>