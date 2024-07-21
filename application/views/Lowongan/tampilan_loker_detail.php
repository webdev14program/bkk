<main id="main">

    <div class="jumbotron jumbotron-fluid bg-primary">
        <div class="container">
            <h1 class="display-4 text-upercase text-center text-white text-uppercase font-weight-bold">LOWONGAN KERJA</h1>
        </div>
    </div>

    <!-- ======= Services Section ======= -->
    <section id="services" class="services">
        <div class="container">
            <div class="row">
                <div class="col-md-3 mt-3">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="text-center"><img src="<?= $lowongan['gambar'] ?>" style="width: 160px;height: 160px;"></h5>
                        </div>
                    </div>
                </div>
                <div class="col-md-9 mt-3">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="text-justify font-weight-bold"> <?= $lowongan['bagian'] ?></h4>
                            <h5 class="text-justify mt-3">Nama Perusahaan : <?= $lowongan['nama_perusahaan'] ?></h5>
                            <hr>
                            <h5 class="text-justify">Lamaran ditutup pada : <?= $lowongan['tgl_akhir'] ?></h5>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md mt-3">
                    <div class="card">
                        <div class="card-body">
                            <?= $lowongan['detail'] ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Lowongan Kerja -->

</main><!-- End #main -->