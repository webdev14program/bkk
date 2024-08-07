<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="BKK SMK TUNAS HARAPAN JAKARTA BARAT">
    <meta name="author" content="RAHMADIKA SURYA SETIAWAN">

    <title>Bursa Kerja Khusus | Administrator</title>
    <link rel="icon" href="<?= base_url() ?>assets/img/bkk_terbaru.png">

    <!-- Custom fonts for this template-->
    <link href="<?= base_url() ?>assets/sbadmin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="<?= base_url() ?>assets/sbadmin/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-md-7">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="p-5">
                                    <div class="text-center">
                                        <img src="<?= base_url() ?>assets/img/bkk_terbaru.png" alt="bkk" style="width: 150px; height: 150px;"> <br>
                                        <h1 class="h4 text-gray-900 mb-4 text-uppercase font-weight-bold">Administrator <br>Bursa Kerja Khusus</h1>
                                        <?= $this->session->flashdata('pesan'); ?>
                                    </div>
                                    <form method="POST" action="<?= base_url() ?>Admin/proses_login" class="user">
                                        <div class="form-group">
                                            <input type="text" class="form-control form-control-user" name="username" placeholder="Username">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control form-control-user" name="password" placeholder="Password">
                                        </div>
                                        <hr>
                                        <button class="btn btn-primary btn-user btn-block">Login</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="<?= base_url() ?>assets/sbadmin/vendor/jquery/jquery.min.js"></script>
    <script src="<?= base_url() ?>assets/sbadmin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="<?= base_url() ?>assets/sbadmin/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="<?= base_url() ?>assets/sbadmin/js/sb-admin-2.min.js"></script>

</body>

</html>