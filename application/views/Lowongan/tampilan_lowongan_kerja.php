<main id="main">
    <!-- ======= Breadcrumbs ======= -->
    <div class="jumbotron jumbotron-fluid bg-primary">
        <div class="container">
            <h1 class="display-4 text-upercase text-center text-white text-uppercase font-weight-bold">LOWONGAN KERJA</h1>
        </div>
    </div>

    <!-- ======= Services Section ======= -->
    <section id="services" class="services">
        <div class="container">
            <?php foreach ($lowongan as $row) : ?>
                <div class="row mt-4 mb-4">
                    <div class="col-md">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-3">
                                        <h5 class="text-center"><img src="<?= $row['gambar'] ?>" style="width: 150px;height: 150px;"></h5>
                                    </div>
                                    <div class="col-md-9">
                                        <h5 class="text-justify"><?= $row['bagian'] ?></h5>
                                        <h6 class="text-justify mt-3">Nama Perusahaan : <?= $row['nama_perusahaan'] ?></h6>
                                        <hr>
                                        <h6 class="text-justify">Lamaran dibuka pada : <?= $row['tgl_dibuat'] ?></h6>
                                        <h6 class="text-justify">Lamaran ditutup pada : <?= $row['tgl_akhir'] ?></h6>
                                    </div>
                                    <div class="row ml-auto mr-4">
                                        <div class="col-md">
                                            <a class="btn btn-primary" href="<?= base_url() ?>lowongan_kerja/detail_loker/<?= $row['id_lowongan'] ?>"><i class="fas fa-search"></i> DETAIL</a>
                                            <a class="btn btn-success" href="<?= base_url() ?>lowongan_kerja/lamar_loker/<?= $row['id_lowongan'] ?>"><i class="fas fa-user-check"></i> LAMAR</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </section>
    <!-- End Lowongan Kerja -->

</main><!-- End #main -->