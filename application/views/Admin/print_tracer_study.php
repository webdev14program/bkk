<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <title>Hello, world!</title>
</head>

<body>
    <div class="table-responsive">
        <table class="table table-bordered text-uppercase text-center border-dark">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Pemangku Kepentingan</th>
                    <th>Religiusitas Siswa</th>
                    <th>Kejujuran Siswa</th>
                    <th>Tanggung Jawab Siswa</th>
                    <th>Kedisiplan Siswa</th>
                    <th>Ilmu Pengetahuan</th>
                    <th>Ilmu Teknologi</th>
                    <th>Ilmu Budaya</th>
                    <th>Kreativitas</th>
                    <th>Produktivitas</th>
                    <th>Komunikasi</th>
                    <th>Kolaborasi</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <?php
                    $no = 1;
                    foreach ($tracer_study as $row) {
                    ?>
                        <td><?php echo $no++; ?></td>
                        <td><?= $row['pengaku_kepentinghan']; ?></td>
                        <td><?= $row['religius']; ?></td>
                        <td><?= $row['jujur']; ?></td>
                        <td><?= $row['tanggung_jawab']; ?></td>
                        <td><?= $row['disiplin']; ?></td>
                        <td><?= $row['kreatifitas']; ?></td>
                        <td><?= $row['pengetahuan']; ?></td>
                        <td><?= $row['budaya']; ?></td>
                        <td><?= $row['kreatifitas']; ?></td>
                        <td><?= $row['produktif']; ?></td>
                        <td><?= $row['komunikasi']; ?></td>
                        <td><?= $row['kolaborasi']; ?></td>
                </tr>
            <?php } ?>
            </tbody>
        </table>
    </div>


    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
    -->
</body>

</html>