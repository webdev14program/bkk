<div class="row">
    <div class="col-md">
        <div class="card">
            <div class="card-body">
                <a class="btn btn-danger btn-sm text-uppercase font-weight-bold" href="<?= base_url() ?>Dashboard/kerja_sama">Kembnali</a>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-5 mt-4">
        <div class="card">
            <div class="card-header bg-primary text-white">
                <h4 class="text-upercase font-weight-bold  text-center"><?= $kerja_sama['nama'] ?></h4>
            </div>
            <div class="card-body">
                <h5 class="text-center">
                    <img src="<?= $kerja_sama['gambar'] ?>" style="width: 220px;height: 150px;" alt="<?= $kerja_sama['nama'] ?>">
                </h5>
            </div>
        </div>
    </div>
    <div class="col-md-7 mt-4">
        <div class="card">
            <div class="card-header bg-primary text-white">
                <h4 class="text-upercase font-weight-bold  text-center">Profil</h4>
            </div>
            <div class="card-body">
                <h5 class="text-justify">
                    <?= $kerja_sama['profil'] ?>
                </h5>
            </div>
        </div>

    </div>
</div>