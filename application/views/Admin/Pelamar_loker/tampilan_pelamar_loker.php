<div class="alert alert-success" role="alert">
    <h3 class="text-center font-weight-bold">Siswa Pelamar Loker</h3>
</div>

<div class="card mt-4">
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-striped table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Foto Siswa</th>
                        <th scope="col">Nama Siswa</th>
                        <th scope="col">Jurusan</th>
                        <th scope="col">Nomor Telpon</th>
                        <th scope="col">Perusahaan</th>
                        <th scope="col">Waktu Daftar</th>
                        <th scope="col">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <?php
                        $no = 1;
                        foreach ($pelamar as $row) {
                        ?>
                            <td><?php echo $no++; ?></td>
                            <td>
                                <h5 class="text-center d-flex justify-content-center"><img src="<?= base_url() ?>assets/upload/lamaran_pekerjaan/<?= $row['gambar'] ?>" style="width: 80px;height: 80px;"></h5>
                            </td>
                            <td>
                                <h6 class="font-weight-bold" style="margin-top: 20px;"><?= $row['nama'] ?></h6>
                            </td>
                            <td>
                                <h6 class="font-weight-bold" style="margin-top: 20px;"><?= $row['jurusan'] ?></h6>
                            </td>
                            <td>
                                <h6 class="font-weight-bold" style="margin-top: 20px;"><?= $row['hp'] ?></h6>
                            </td>
                            <td>
                                <h6 class="font-weight-bold" style="margin-top: 20px;"><?= $row['nama_perusahaan'] ?></h6>
                            </td>
                            <td>
                                <h6 class="font-weight-bold" style="margin-top: 20px;"><?= $row['time'] ?></h6>
                            </td>
                            <td>
                                <h6 class="text-center"><a class="btn btn-success btn-md btn-block" href="https://api.whatsapp.com/send?phone=62<?= $row['hp'] ?>&text=Assalamu'Alaikum Selamat Pagi Siang Sore, Saya Admin Bkk, Akan Memverifikasi Data Anda Dan Saya Akan Memberikan Info Kepada Anda Jika Lowongan Yang Anda Ingin Kan Sudah Ada Panggilan
" target="_blank">Watsapp</a></h6>
                                <h6 class="text-center"><a class="btn btn-danger btn-md btn-block" href="<?= base_url() ?>Dashboard/print/<?= $row['id_lamar'] ?>" target="_blank">Print</a></h6>
                            </td>
                    </tr>
                <?php } ?>
                </tbody>
            </table>
        </div>
    </div>
</div>