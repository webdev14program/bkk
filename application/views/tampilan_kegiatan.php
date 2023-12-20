<main id="main">
    <div class="jumbotron jumbotron-fluid bg-primary">
        <div class="container">
            <h1 class="display-4 text-upercase text-center text-white text-uppercase font-weight-bold">Kegiatan BKK SMK TH</h1>
        </div>
    </div>
    <section id="contact" class="contact">
        <div class="container">
            <div class="row">
                <?php foreach ($kegiatan as $row) : ?>
                    <div class="col-md mt-2 d-flex align-items-center justify-content-center mb-4">
                        <div class="card" style="width: 21rem;">
                            <div class="card-body">
                                <h5 class="text-uppercase text-center mb-3"><?= $row['nama_kegiatan'] ?> </h5>
                                <h5 class="text-center mt-2"><img src="<?= $row['gambar'] ?>" class="card-img-top" style="width: 285px;height: 235px;"></h5>
                            </div>
                            <div class="card-footer text-muted">
                                <h5 class="text-center">
                                    <a class="btn btn-primary btn-sm text-uppercase font-weight-bold" href="<?= base_url() ?>Kegiatan/detail_kegiatan/<?= $row['id_kegiatan'] ?>">Detail</a>
                                </h5>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
        </div>

    </section><!-- End Contact Section -->

    <!-- ======= Contact Section ======= -->


</main><!-- End #main -->