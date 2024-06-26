<main id="main">
    <div class="jumbotron jumbotron-fluid bg-primary">
        <div class="container">
            <h1 class="display-4 text-upercase text-center text-white text-uppercase font-weight-bold">Kegiatan BKK SMK TH</h1>
        </div>
    </div>
    <section id="contact" class="contact">
        <div class="container">
            <div class="row">
                <div class="col-md">
                    <div class="card">
                        <div class="card-header bg-primary text-white">
                            <h4 class="text-center text-uppercase font-weight-bold"><?= $kegiatan['nama_kegiatan'] ?></h4>
                        </div>
                        <div class="card-body">
                            <h5 class="text-center">
                                <img src="<?= $kegiatan['gambar'] ?>" alt="<?= $kegiatan['nama_kegiatan'] ?>" style="width: 300px;height: 200px;">
                            </h5>
                            <div class="card">
                                <div class="card-header bg-primary text-white">
                                    <h5 class="text-center text-uppercase font-weight-bold">gambar</h5>
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <?php foreach ($gambar as $row) : ?>
                                            <div class="col-md mt-2 d-flex align-items-center justify-content-center mb-4">

                                                <h5 class="text-center mt-2"><img src="<?= $row['gambar'] ?>" class="card-img-top" style="width: 250px;height: 200px;"></h5>

                                            </div>
                                        <?php endforeach; ?>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>


    </section><!-- End Contact Section -->

    <!-- ======= Contact Section ======= -->


</main><!-- End #main -->