<!-- ======= Hero Section ======= -->
<section id="hero">
    <div id="heroCarousel" class="carousel slide carousel-fade" data-ride="carousel">

        <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

        <div class="carousel-inner" role="listbox">
            <!-- Slide 1 -->
            <div class="carousel-item active" style="background-image: url(https://smkth-jakbar.com/assets/images/background3.jpeg)">
                <div class="carousel-container">
                    <div class="container">
                        <h5 class="text-center"><img class="animate__animated animate__fadeInDown img-fluid" src="<?= base_url() ?>assets/img/logo_bkk.jpeg" alt="logo" style="width: 250px; height: 250px;"></h5>
                        <h2 class="animate__animated animate__fadeInUp">Welcome TO <br>Bursa Kerja Khusus <br>SMK Tunas Harapan Jakarta Barat</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section><!-- End Hero -->

<main id="main">

    <!-- ======= About Section ======= -->
    <section id="about" class="about bg-light">
        <div class="container">

            <div class="row content">
                <div class="col-md">
                    <h5 class="text-center">
                        <img src="<?= base_url() ?>assets/img/logo_bkk.jpeg" alt="logo">
                    </h5>
                </div>
                <div class="col-md">
                    <h2 class="text-center text-primary">Bursa Kerja Khusus <br>SMK Tunas Harapan Jakarta Barat</h2>
                    <h3 class="text-justify">
                        Bursa Kerja Khusus SMK Tunas Harapan Jakarta Barat sebagai salah satu Lembaga Pendidikan formal yang menyelenggarakan jenjang Pendidikan menengah kejuruan (SMK) yang bertujuan menyiapkan tenaga kerja tingkat menengah. Salah satunya yang menjadi tuntutan bagi SMK saat ini adalah bagaimana agar bisa mencitrakan diri sebagai sekolah yang mampu mencetak siswanya menjadi tenaga kerja yang produktif dan professional.
                    </h3>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md">

            </div>
        </div>
    </section><!-- End About Section -->



    <!-- ======= Clients Section ======= -->
    <section id="clients" class="bg-secodary">
        <div class="container">
            <div class="row">
                <div class="col-md">
                    <h2 class="text-center font-weight-bold mb-4" style="text-transform: uppercase;">Kerja Sama Perusahaan</h2>
                </div>
            </div>
            <div class="row">
                <?php foreach ($data as $row) : ?>
                    <div class="col-md d-flex align-items-center justify-content-center mb-4">
                        <div class="card" style="width: 18rem;">
                            <h5 class="text-center"><img src="<?= base_url() ?>assets/upload/<?= $row['gambar'] ?>" class="card-img-top" style="width: 150px;height: 100px;"></h5>
                            <div class="card-body">
                                <p class="card-text text-center"><?= $row['nama'] ?></p>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>

        </div>
    </section><!-- End Clients Section -->

    <!-- ======= Services Section ======= -->
    <section id="services" class="services bg-light">
        <div class="container">

            <div class="section-title">
                <h2>Bursa Kerja Khusus</h2>
                <p>Special Job Fair Process</p>
            </div>

            <div class="row">
                <div class="col-md-6 d-flex justify-content-center">
                    <div class="card border-0 bg-light" style="width: 18rem;">
                        <h5 class="text-center text-primary"><i class="fas fa-recycle fa-4x"></i></h5>
                        <div class="card-body">
                            <h4 class="text-center text-primary"> Tahap 1</h4>
                            <p class="card-text text-center text-primary" style="text-transform: capitalize;">Pencari kerja membuka web BKK SMK Tunas Harapan Jakarta Barat dan memilih lowongan yang diminati</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 mt-4 d-flex justify-content-center">
                    <div class="card border-0 bg-light" style="width: 18rem;">
                        <h5 class="text-center text-primary"><i class="fas fa-search fa-4x" style="text-transform: capitalize;"></i></i></h5>
                        <div class="card-body">
                            <h4 class="text-center text-primary"> Tahap 2</h4>
                            <p class="card-text text-center text-primary" style="text-transform: capitalize;">Pencari kerja apply lowongan kerja yang di minati di website BKK SMK Tunas Harapan Jakarta Barat</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 mt-4 d-flex justify-content-center">
                    <div class="card border-0 bg-light" style="width: 18rem;">
                        <h5 class="text-center text-primary"><i class="fas fa-school fa-4x"></i></i></h5>
                        <div class="card-body">
                            <h4 class="text-center text-primary"> Tahap 3</h4>
                            <p class="card-text text-center text-primary" style="text-transform: capitalize;">Pencari kerja menunggu panggilan dan jadwal tes dari BKK</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 mt-4 d-flex justify-content-center">
                    <div class="card border-0 bg-light" style="width: 18rem;">
                        <h5 class="text-center text-primary"><i class="fas fa-handshake fa-4x"></i></i></h5>
                        <div class="card-body">
                            <h4 class="text-center text-primary"> Tahap 4</h4>
                            <p class="c\0.rd-text text-center text-primary" style="text-transform: capitalize;">Pencari kerja melakukan tes, menunggu informasi tes dari perusahaan</p>
                        </div>
                    </div>
                </div>
            </div>
    </section><!-- End Services Section -->
    0
    <!-- ======= Portfolio Section ======= -->
    <section id="portfolio" class="portfolio">
        <div class="container">

            <div class="section-title">
                <h2>Bursa Kerja Khusus</h2>
                <p style="text-transform: uppercase;">newest job vacancy</p>
            </div>
            <div class="row">
                <?php foreach ($lowongan as $row) : ?>
                    <div class="col-md d-flex align-items-center justify-content-center br-4">
                        <div class="card" style="width: 18rem;">
                            <h5 class="text-center"><img src="<?= base_url() ?>assets/lowongan/<?= $row['gambar'] ?>" class="card-img-top" alt="..." style="width: 170px;height: 120px;"></h5>
                            <div class="card-body">
                                <h5 class="card-title text-center"><?= $row['bagian'] ?></h5>
                                <h5 class="card-title text-center"><?= $row['nama_perusahaan'] ?></h5>
                                <div class="row">
                                    <div class="col-md d-flex align-items-center justify-content-center mt-4"><a href="#" class="btn btn-primary">Detail</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>

            <h5 class="text-center"><a class="btn btn-primary btn-lg font-weight-bold mt-4" href="<?= base_url() ?>Lowongan_kerja">ALL JOB VACANCY</a></h5>
        </div>
    </section><!-- End Portfolio Section -->

</main><!-- End #main -->