<!DOCTYPE html>
<html>

<head>
    <title>BKK SMK TUNAS HARAPAN - Curriculum Vitae</title>
    <meta name="viewport" content="width=device-width" />
    <meta charset="UTF-8">
    <link type="text/css" rel="stylesheet" href="<?= base_url() ?>assets/cv/style.css">
    <link href='http://fonts.googleapis.com/css?family=Rokkitt:400,700|Lato:400,300' rel='stylesheet' type='text/css'>
</head>

<body>
    <div id="cv">
        <div class="mainDetails">
            <div id="headshot" class="quickFade">
                <img src="<?= base_url() ?>assets/upload/lamaran_pekerjaan/<?= $pelamar['gambar'] ?>" />
            </div>
            <div id="name">
                <h1 class=" delayTwo">Curriculum Vitae</h1>
                <h2 class=" delayThree"><?= $pelamar['nama'] ?></h2>
                <h4 class=" delayThree">Nomor HP : <?= $pelamar['hp'] ?></h4>
            </div>
            <div class="clear"></div>
        </div>
        <div id="mainArea" class=" delayFive">
            <section>
                <article>
                    <div class="sectionTitle">
                        <h1>Tujuan Karir</h1>
                    </div>
                    <div class="sectionContent">
                        <p><?= $pelamar['background'] ?></p>
                    </div>
                </article>
                <div class="clear"></div>
            </section>
            <section>
                <div class="sectionTitle">
                    <h1>Data Pribadi</h1>
                </div>
                <div class="sectionContent">
                    <table>
                        <tr>
                            <td>Nama</td>
                            <td>: <?= $pelamar['nama'] ?></td>
                        </tr>
                        <tr>
                            <td>Tempat, Tanggal Lahir</td>
                            <td>: <?= $pelamar['tempat_lahir'] ?>,<?= $pelamar['tgl_lahir'] ?></td>
                        </tr>
                        <tr>
                            <td>Agama</td>
                            <td>: <?= $pelamar['agama'] ?></td>
                        </tr>
                        <tr>
                            <td>Warga Negara</td>
                            <td>: <?= $pelamar['kewarganegaraan'] ?></td>
                        </tr>
                        <tr>
                            <td>Alamat Lengkap</td>
                            <td>: <?= $pelamar['alamat'] ?></td>
                        </tr>
                        <tr>
                            <td>Nomor HP</td>
                            <td>: <?= $pelamar['hp'] ?></td>
                        </tr>
                    </table>
                </div>
                <div class="clear"></div>
            </section>
            <section>
                <div class="sectionTitle">
                    <h1>Keahlian</h1>
                </div>
                <div class="sectionContent">
                    <table width=500px>
                        <tr>
                            <td><?= $pelamar['kemampuan'] ?></td>
                        </tr>
                    </table><br>
                </div>
                <div class="clear"></div>
            </section>
            <section>
                <div class="sectionTitle">
                    <h1>Riwayat Pendidikan</h1>
                </div>
                <div class="sectionContent">
                    <article>
                        <h3><?= $pelamar['sd'] ?></h3>
                        <h4 class="subDetails"><?= $pelamar['tahun_sd'] ?></h4>
                    </article>

                    <article>
                        <h3><?= $pelamar['smp'] ?></h3>
                        <h4 class="subDetails"><?= $pelamar['tahun_smp'] ?></h4>
                    </article>
                    <article>
                        <h3><?= $pelamar['smk'] ?></h3>
                        <h4 class="subDetails"><?= $pelamar['tahun_smk'] ?></h4>
                    </article>
                    <br>
                </div>
                <div class="clear"></div>
            </section>
        </div>
    </div>

    <script>
        window.print();
    </script>
</body>

</html>