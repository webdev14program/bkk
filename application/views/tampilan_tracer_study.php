<div class="container">
    <div class="row">
        <div class="col-md">
            <div class="card">
                <div class="card-header bg-primary">
                    <h5 class="text-uppercase text-white font-wight-bold">Tracer Study Kepuasan Pemangku Kepentingan</h5>
                </div>
                <div class="card-body">
                    <div class="card">
                        <div class="card-body">
                            <form action="<?= base_url() ?>Home/simpan" method="POST">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="form-group">
                                            <label class=" font-weight-bold">Unsur Pemangku Kepentingan</label>
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" name="pengaku_kepentinghan" value="Perwakilan Orang Tua Siswa">
                                                <label class="form-check-label">
                                                    Perwakilan Orang Tua Siswa
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" name="pengaku_kepentinghan" value="Komite Sekolah">
                                                <label class="form-check-label">
                                                    Komite Sekolah
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" name="pengaku_kepentinghan" value="Dunia Kerja">
                                                <label class="form-check-label">
                                                    Dunia Kerja
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" name="pengaku_kepentinghan" value="Perguruan Tinggi">
                                                <label class="form-check-label">
                                                    <label class="form-check-label" for="exampleRadios2">
                                                        Perguruan Tinggi
                                                    </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card mt-3">
                                    <div class="card-body">
                                        <div class="alert alert-primary" role="alert">
                                            <p class="font-weight-bold text-center">Mohon kepada Bapak/Ibu/Saudara berilah jawaban secara jujur terkait dengan <br>
                                                Kepuasan terhadap sikap lulusan SMK Tunas Harapan Jakarta Barat</p>
                                        </div>
                                        <div class="row">
                                            <div class="col-md">
                                                <div class="form-group">
                                                    <label class="font-weight-bold">Sikap Religiusitas Siswa</label>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="religius" value="Sangat Baik">
                                                        <label class="form-check-label">
                                                            Sangat Baik
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="religius" value="Baik">
                                                        <label class="form-check-label" for="exampleRadios2">
                                                            Baik
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="religius" value="Cukup">
                                                        <label class="form-check-label" for="exampleRadios2">
                                                            Cukup
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="religius" value="Sedang">
                                                        <label class="form-check-label" for="exampleRadios2">
                                                            Sedang
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="religius" value="Kurang">
                                                        <label class="form-check-label" for="exampleRadios2">
                                                            Kurang
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="font-weight-bold">Sikap Kejujuran Siswa</label>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="jujur" value="Sangat Baik">
                                                        <label class="form-check-label" for="exampleRadios1">
                                                            Sangat Baik
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="jujur" value="Baik">
                                                        <label class="form-check-label" for="exampleRadios2">
                                                            Baik
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="jujur" value="Cukup">
                                                        <label class="form-check-label" for="exampleRadios2">
                                                            Cukup
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="jujur" value="Sedang">
                                                        <label class="form-check-label" for="exampleRadios2">
                                                            Sedang
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="jujur" value="Kurang">
                                                        <label class="form-check-label" for="exampleRadios2">
                                                            Kurang
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="font-weight-bold">Sikap Tanggung Jawab Siswa</label>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="tanggung_jawab" value="Sangat Baik">
                                                        <label class="form-check-label" for="exampleRadios1">
                                                            Sangat Baik
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="tanggung_jawab" value="Baik">
                                                        <label class="form-check-label" for="exampleRadios2">
                                                            Baik
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="tanggung_jawab" value="Cukup">
                                                        <label class="form-check-label" for="exampleRadios2">
                                                            Cukup
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="tanggung_jawab" value="Sedang">
                                                        <label class="form-check-label" for="exampleRadios2">
                                                            Sedang
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="tanggung_jawab" value="Kurang">
                                                        <label class="form-check-label" for="exampleRadios2">
                                                            Kurang
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="font-weight-bold">Sikap Kedisiplinan Siswa</label>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="disiplin" value="Sangat Baik">
                                                        <label class="form-check-label" for="exampleRadios1">
                                                            Sangat Baik
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="disiplin" value="Baik">
                                                        <label class="form-check-label" for="exampleRadios2">
                                                            Baik
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="disiplin" value="Cukup">
                                                        <label class="form-check-label" for="exampleRadios2">
                                                            Cukup
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="disiplin" value="Sedang">
                                                        <label class="form-check-label" for="exampleRadios2">
                                                            Sedang
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="disiplin" value="Kurang">
                                                        <label class="form-check-label" for="exampleRadios2">
                                                            Kurang
                                                        </label>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="font-weight-bold">Bidang Ilmu Pengetahuan</label>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="pengetahuan" value="Sangat Baik">
                                                        <label class="form-check-label" for="exampleRadios1">
                                                            Sangat Baik
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="pengetahuan" value="Baik">
                                                        <label class="form-check-label" for="exampleRadios2">
                                                            Baik
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="pengetahuan" value="Cukup">
                                                        <label class="form-check-label" for="exampleRadios2">
                                                            Cukup
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="pengetahuan" value="Sedang">
                                                        <label class="form-check-label" for="exampleRadios2">
                                                            Sedang
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="pengetahuan" value="Kurang">
                                                        <label class="form-check-label" for="exampleRadios2">
                                                            Kurang
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="font-weight-bold">Bidang Tekhnologi</label>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="teknologi" value="Sangat Baik">
                                                        <label class="form-check-label" for="exampleRadios1">
                                                            Sangat Baik
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="teknologi" value="Baik">
                                                        <label class="form-check-label" for="exampleRadios2">
                                                            Baik
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="teknologi" value="Cukup">
                                                        <label class="form-check-label" for="exampleRadios2">
                                                            Cukup
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="teknologi" value="Sedang">
                                                        <label class="form-check-label" for="exampleRadios2">
                                                            Sedang
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="teknologi" value="Kurang">
                                                        <label class="form-check-label" for="exampleRadios2">
                                                            Kurang
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md">
                                                <div class="form-group">
                                                    <label class="font-weight-bold">Bidang Budaya</label>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="budaya" value="Sangat Baik">
                                                        <label class="form-check-label" for="exampleRadios1">
                                                            Sangat Baik
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="budaya" value="Baik">
                                                        <label class="form-check-label" for="exampleRadios2">
                                                            Baik
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="budaya" value="Cukup">
                                                        <label class="form-check-label" for="exampleRadios2">
                                                            Cukup
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="budaya" value="Sedang">
                                                        <label class="form-check-label" for="exampleRadios2">
                                                            Sedang
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="budaya" value="Kurang">
                                                        <label class="form-check-label" for="exampleRadios2">
                                                            Kurang
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="font-weight-bold">Kreativitas</label>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="kreatifitas" value="Sangat Baik">
                                                        <label class="form-check-label" for="exampleRadios1">
                                                            Sangat Baik
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="kreatifitas" value="Baik">
                                                        <label class="form-check-label" for="exampleRadios2">
                                                            Baik
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="kreatifitas" value="Cukup">
                                                        <label class="form-check-label" for="exampleRadios2">
                                                            Cukup
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="kreatifitas" value="Sedang">
                                                        <label class="form-check-label" for="exampleRadios2">
                                                            Sedang
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="kreatifitas" value="Kurang">
                                                        <label class="form-check-label" for="exampleRadios2">
                                                            Kurang
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="font-weight-bold">Produktivitas</label>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="produktif" value="Sangat Baik">
                                                        <label class="form-check-label" for="exampleRadios1">
                                                            Sangat Baik
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="produktif" value="Baik">
                                                        <label class="form-check-label" for="exampleRadios2">
                                                            Baik
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="produktif" value="Cukup">
                                                        <label class="form-check-label" for="exampleRadios2">
                                                            Cukup
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="produktif" value="Sedang">
                                                        <label class="form-check-label" for="exampleRadios2">
                                                            Sedang
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="produktif" value="Kurang">
                                                        <label class="form-check-label" for="exampleRadios2">
                                                            Kurang
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="font-weight-bold">Komunikasi</label>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="komunikasi" value="Sangat Baik">
                                                        <label class="form-check-label">
                                                            Sangat Baik
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="komunikasi" value="Baik">
                                                        <label class="form-check-label">
                                                            Baik
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="komunikasi" value="Cukup">
                                                        <label class="form-check-label">
                                                            Cukup
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="komunikasi" value="Sedang">
                                                        <label class="form-check-label">
                                                            Sedang
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="komunikasi" value="Kurang">
                                                        <label class="form-check-label">
                                                            Kurang
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="font-weight-bold">Kolaborasi</label>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="kolaborasi" value="Sangat Baik">
                                                        <label class="form-check-label">
                                                            Sangat Baik
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="kolaborasi" value="Baik">
                                                        <label class="form-check-label">
                                                            Baik
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="kolaborasi" value="Cukup">
                                                        <label class="form-check-label">
                                                            Cukup
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="kolaborasi" value="Sedang">
                                                        <label class="form-check-label">
                                                            Sedang
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="kolaborasi" value="Kurang">
                                                        <label class="form-check-label">
                                                            Kurang
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <h5 class="text-center text-uppercase font-weight-bold">
                                    <button type="submit" class="btn btn-primary mt-4">Simpan</button>
                                </h5>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>