<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <title>Bursa Kerja Khusus | Administrator</title>
    <link rel="icon" href="<?= base_url() ?>assets/img/logo_bkk.jpeg">
</head>

<body>

    <div class="container">
        <div class="row" style="margin-top: 50px;">
            <img src="<?= base_url() ?>assets/img/logo_bkk.jpeg" style="width: 180px;height: 160px;margin-top: 20px;">
            <div class="col-md mt-4">
                <table class="table border">
                    <tbody>
                        <tr>
                            <td class="font-weight-bold text-center text-uppercase">Bursa Kerja Khusus</td>
                        </tr>
                        <tr>
                            <td class="font-weight-bold text-center text-uppercase">penelusuran tamatan </td>
                        </tr>

                        <tr>
                            <td class="font-weight-bold text-center text-uppercase">Tahun <?= $header['tahun_lulus'] ?></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div><br>
        <hr style="border-top: 2px dashed black;">

        <table class="table table-striped table-bordered text-uppercase border-dark" id="dataTable" width="100%" cellspacing="0">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Nama Siswa</th>
                    <th>Kompetensi Keahlian</th>
                    <th>Kegiatan setelah Lulus</th>
                    <th>Tempat Kerja/Kuliah</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <?php
                    $no = 1;
                    foreach ($alumni as $row) {
                    ?>
                        <td><?php echo $no++; ?></td>
                        <td><?= $row['nama_siswa']; ?></td>
                        <td><?= $row['kompetensi_keahlian']; ?></td>
                        <td><?= $row['status']; ?></td>
                        <td><?= $row['nama_perusahaan']; ?></td>
                </tr>
            <?php } ?>
            </tbody>
        </table>


    </div>
    <!-- <div class="row mb-2 mt-2">
        <div class="col-md">
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered text-uppercase" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Nama Siswa</th>
                                    <th>Kompetensi Keahlian</th>
                                    <th>Kegiatan setelah Lulus</th>
                                    <th>Tahun Lulus</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <?php
                                    $no = 1;
                                    foreach ($alumni as $row) {
                                    ?>
                                        <td><?php echo $no++; ?></td>
                                        <td><?= $row['nama_siswa']; ?></td>
                                        <td><?= $row['kompetensi_keahlian']; ?></td>
                                        <td><?= $row['status']; ?></td>
                                        <td><?= $row['tahun_lulus']; ?></td>
                                </tr>
                            <?php } ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div> -->



    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>

</body>

</html>