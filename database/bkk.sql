-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 08, 2022 at 08:44 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bkk`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth`
--

CREATE TABLE `auth` (
  `id` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(64) NOT NULL,
  `nama` varchar(256) NOT NULL,
  `level` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth`
--

INSERT INTO `auth` (`id`, `username`, `password`, `nama`, `level`) VALUES
(101, 'admin', '0192023a7bbd73250516f069df18b500', 'Administrator BKK', 'admin'),
(202, 'adminbkk', 'bcb15777aec1a7d47ccd8c1a1f8c9725', 'Admin BKK', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `lamar_loker`
--

CREATE TABLE `lamar_loker` (
  `id_lamar` int(11) NOT NULL,
  `id_lowongan` int(16) NOT NULL,
  `nama` varchar(256) NOT NULL,
  `tempat_lahir` varchar(128) NOT NULL,
  `tgl_lahir` varchar(128) NOT NULL,
  `alamat` text NOT NULL,
  `hp` varchar(32) NOT NULL,
  `jenis_kelamin` varchar(64) NOT NULL,
  `agama` varchar(256) NOT NULL,
  `kewarganegaraan` varchar(256) NOT NULL,
  `status` varchar(128) NOT NULL,
  `sd` varchar(32) NOT NULL,
  `tahun_sd` varchar(64) NOT NULL,
  `smp` varchar(32) NOT NULL,
  `tahun_smp` varchar(64) DEFAULT NULL,
  `smk` varchar(32) NOT NULL,
  `tahun_smk` varchar(64) NOT NULL,
  `jurusan` varchar(128) NOT NULL,
  `kemampuan` varchar(512) NOT NULL,
  `background` text NOT NULL,
  `gambar` varchar(256) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lowongan`
--

CREATE TABLE `lowongan` (
  `id_lowongan` int(11) NOT NULL,
  `nama_perusahaan` varchar(256) NOT NULL,
  `bagian` varchar(256) NOT NULL,
  `detail` varchar(2048) NOT NULL,
  `tgl_dibuat` text NOT NULL,
  `tgl_akhir` text NOT NULL,
  `gambar` varchar(256) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lowongan`
--

INSERT INTO `lowongan` (`id_lowongan`, `nama_perusahaan`, `bagian`, `detail`, `tgl_dibuat`, `tgl_akhir`, `gambar`, `timestamp`) VALUES
(11, 'PT.  Nusantara elka ', 'AKUNTANSI, SEKERTARIS', '<p>Selamat Siang salam kenal saya Dedi dari PT. &nbsp;Nusantara elka sumber dengan alamat Office Jln. Ruko TOHO Kapuk Muara Penjaringan Jakarta Utara dan Office II Jalan Walet elok 7 no. 28 penjaringan jakarta utara terkait dengan Agenda porses recruitment untuk mencari murid lulusan terbaik dengan jurusan &nbsp;AKUNTANSI, SEKETARIS &nbsp;yang mana kita akan masukan ke dalam on the job training &nbsp;sebagai karyawan traine LOKASI DI PIK JAKARTA UTARA &nbsp;dengan syarat sebagai berikut :<br />\r\n1. Memiliki Nilai Baik<br />\r\n2. Memiliki personality /sikap yang baik<br />\r\n3. Memiliki semi skill (pernah mengikuti PKL)&nbsp;</p>\r\n\r\n<p>Mohon kirannya untuk memberikan &nbsp;beberapa calon dan kirim Lamaran nya ke no wa 0852 8051 0883 atau email : hrga@nessteel.co.id untuk kami proses wawancara</p>\r\n\r\n<p>Atas kerja samanya kami ucapkan terima kasih</p>\r\n\r\n<p>Salam<br />\r\nDedi\r\n<br />\r\nWa : 0852 8051 0883<br />\r\nEmail : hrga@nessteel.co.id</p>\r\n', '2022-01-30', '2022-02-20', 'ness_steel.png', '2022-02-19 06:54:57'),
(12, 'PT.  Nusantara elka ', 'MULTI MEDIA dan PEMASARAN ', '<p>Selamat Pagi salam kenal saya Dedi dari PT. &nbsp;Nusantara elka sumber dengan alamat Kantor 1 Jln. Ruko TOHO Kapuk Muara Penjaringan Jakarta Utara dan kantor 2 Jln Walet Elok 7 no. 28 PIK penjaringan Jakarta Utara terkait dengan Agenda porses recruitment untuk mencari murid lulusan terbaik dengan jurusan MULTI MEDIA dan PEMASARAN yang mana kita akan masukan ke dalam on the job training &nbsp;sebagai karyawan trainee LOKASI DI PIK JAKARTA UTARA &nbsp;dengan syarat sebagai berikut :<br />\r\n1. Memiliki Nilai Baik<br />\r\n2. Memiliki personality /sikap yang baik<br />\r\n3. Memiliki semi skill (pernah mengikuti PKL)&nbsp;</p>\r\n\r\n<p>Mohon kirannya untuk memberikan &nbsp;beberapa calon dan kirim Lamaran nya ke no wa 0852 8051 0883 atau email : hrga@nessteel.co.id untuk kami proses wawancara</p>\r\n\r\n<p>Atas kerja samanya kami ucapkan terima kasih</p>\r\n\r\n<p>Salam<br />\r\nDedi<br />\r\nWa : 0852 8051 0883<br />\r\nEmail : hrga@nessteel.co.id<br />\r\nwww.nessteel.co.id</p>\r\n', '2022-02-19', '2022-03-05', 'nes-logo.png', '2022-02-19 06:54:28'),
(13, 'FARIKA BETON', 'SEMUA JURUSAN', '<p><strong>PT FARIKA BETON</strong> adalah Sebuah perusahaan swasta nasional bergerak dibidang manufaktur beton, yang berlokasi di Jakarta, Tangerang, Serang, Karawang, Sukabumi, dll. Dalam Perkembangannya membutuhkan tenaga kerja:</p>\r\n\r\n<p>Teknisi Lab (Kode : TL)</p>\r\n\r\n<p>Supir Truk Mixer (Kode : SUPIR TM)</p>\r\n\r\n<p>Supir Dump Truck&nbsp;(Kode : SUPIR DT)</p>\r\n\r\n<p>Supir Panther&nbsp;(Kode : SUPIR PTR)</p>\r\n\r\n<p>Supervisor QC (Kode : SPV QC)</p>\r\n\r\n<p>Staff Accounting (Kode : ACCT)</p>\r\n\r\n<p>Staff Manager Batching plant (Kode :&nbsp; SM)</p>\r\n\r\n<p>Admin &nbsp;Batching plant (Kode :&nbsp; ADM BP)</p>\r\n\r\n<p>Staff Accounting Receivable (Kode : AR)</p>\r\n\r\n<p><strong>SYARAT :&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li>Pria/Wanita</li>\r\n	<li>Usia Min 18 Tahun</li>\r\n	<li>Pendidikan Min SLTA Sederajat</li>\r\n	<li>Bersedia Ditempatkan dimana saja</li>\r\n</ul>\r\n\r\n<p>Kirim Lamaran Lengkap&nbsp;Melalui :</p>\r\n\r\n<p>Email : hrd@farikabeton.co.id</p>\r\n\r\n<p>Subject ; (Kode posisi yang dilamar)</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2022-02-22', '2022-03-08', 'download.jpeg', '2022-07-21 13:46:23'),
(14, 'PT Mega Perintis tbk (Magang)', 'Admin invemtory', '<p>Jakarta, 24 Maret 2022<br />\r\nAssalamu &lsquo;alaikum Wr. Wb</p>\r\n\r\n<p>BKK SMK Tunas Harapan, akan mengadakan open rekrutmen dari beberapa perusahaan :<br />\r\nPT Mega Perintis tbk ( Magang)<br />\r\n&nbsp;</p>\r\n\r\n<p>Untuk PT Mega Perintis tbk dibutuhkan :<br />\r\n1.&nbsp;&nbsp; &nbsp;Admin invemtory harian &nbsp;8 orang (untuk 7 hari kerja)<br />\r\n2.&nbsp;&nbsp; &nbsp;Posisi &nbsp;lainnya &nbsp;( 50 orang ) untuk 14 hari kerja yaitu seminggu sebelum dan sesudah lebaran</p>\r\n\r\n<p><br />\r\nPersyaratan untuk semua lamaran :<br />\r\n1.&nbsp;&nbsp; &nbsp;L/P tinggi badan min 155 cm<br />\r\n2.&nbsp;&nbsp; &nbsp;Berpenampilan rapi dan menarik<br />\r\n3.&nbsp;&nbsp; &nbsp;Sudah memiliki KTP<br />\r\nBagi yang berminat &nbsp;Harap siapkan :<br />\r\n1.Ijazah bagi sudah memiliki<br />\r\n2. Surat Lamaran kerja dan CV<br />\r\n3. Fc. KTP<br />\r\n4. &nbsp;&nbsp; &nbsp;Pas Foto background merah &nbsp;3x 4 sebanyak 2 lembar</p>\r\n\r\n<p>Semua persyaratan dimasukkan ke dalam amplop coklat<br />\r\nSurat Lamaran di bawa ke :<br />\r\nSMK Tunas Harapan pada Rabu, 30 Maret 2022 pukul &nbsp;: 09.00 WIB<br />\r\nBagi yang berminat Silahkan hub. Pihak BKK SMK Tunas Harapan&nbsp;<br />\r\n1.&nbsp;&nbsp; &nbsp;Pak Gutser ( 0852 -1517-2677)<br />\r\n2.&nbsp;&nbsp; &nbsp;Bu &nbsp; Eky ( 0812-8202-1181 )</p>\r\n', '2022-03-24', '2022-04-07', 'mega_printis.png', '2022-03-24 07:24:00'),
(16, 'SUPER INDO', 'KASIR / PRAMUNIAGA', '<p>Super Indo membuka lowongan &nbsp;pemangangan selama 1 tahun menjadi kasir/ pramuniaga.</p>\r\n\r\n<p>kualifikasi :</p>\r\n\r\n<ol>\r\n	<li>Lulusan SMA/ SMK (lulusan tahun ini atau alumni)&nbsp;</li>\r\n	<li>Pria/Wanita usia 18 s.d 25 tahun</li>\r\n	<li>Bersedia sistem shif dan masuk di hari sabtu/minggu/libur nas</li>\r\n	<li>Bersedia melampirkan &nbsp; hasil rapid saat penandatanganan &nbsp;kontrak</li>\r\n	<li>interview oleh HRD via zoom atau video call WA ( harap hp selalu aktif)</li>\r\n</ol>\r\n\r\n<p>Catatan: diperbolehkan memakai jilbab</p>\r\n\r\n<p><br />\r\nBagi yang berminat silahkan hub. BKK Tunas Harapan&nbsp;</p>\r\n\r\n<ol>\r\n	<li>Pa&nbsp;Gutser (0852-1517-2677)</li>\r\n	<li>Bu Tari ( 0857-4117-4277)</li>\r\n</ol>\r\n', '2022-04-05', '2022-04-19', 'LOGO_SUPER_INDO_PNG.png', '2022-04-05 13:22:56');

-- --------------------------------------------------------

--
-- Table structure for table `permintaan_tenaga_kerja`
--

CREATE TABLE `permintaan_tenaga_kerja` (
  `id_permintaan_tenaga_kerja` int(32) NOT NULL,
  `nama_perusahaan` text NOT NULL,
  `alamat_perusahaan` text NOT NULL,
  `tlpn_perusahaan` text NOT NULL,
  `bidang_perusahaan` text NOT NULL,
  `nama` text NOT NULL,
  `jabatan` text NOT NULL,
  `no_telpon` text NOT NULL,
  `email` text NOT NULL,
  `akl` int(128) NOT NULL,
  `otkp` int(128) NOT NULL,
  `bdp` int(128) NOT NULL,
  `tkj` int(128) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permintaan_tenaga_kerja`
--

INSERT INTO `permintaan_tenaga_kerja` (`id_permintaan_tenaga_kerja`, `nama_perusahaan`, `alamat_perusahaan`, `tlpn_perusahaan`, `bidang_perusahaan`, `nama`, `jabatan`, `no_telpon`, `email`, `akl`, `otkp`, `bdp`, `tkj`, `time`) VALUES
(64174298, 'PT. Farika Beton', 'Jakarta Barat', '081383814311', 'Teknologi', 'Dika', 'HRD', '081383814312', 'dika.tkj@smkth-jakbar.com', 3, 0, 0, 5, '2022-08-08 06:31:47');

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan`
--

CREATE TABLE `perusahaan` (
  `id_perusahaan` int(11) NOT NULL,
  `nama` varchar(256) NOT NULL,
  `profil` varchar(512) NOT NULL,
  `gambar` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `perusahaan`
--

INSERT INTO `perusahaan` (`id_perusahaan`, `nama`, `profil`, `gambar`) VALUES
(1, 'PT. Inti Prima Karya', 'Percetakan Murah Berkualitas IPK (PT. Inti Prima Karya) adalah solusi percetakan murah untuk segala kebutuhan cetakan. IPK berdiri sejak tahun 2000 dan telah memiliki ribuan client dari perusahaan skala kecil sampai dengan perusahaan skala multi-nasional.\r\n\r\nIPK memiliki banyak alat-alat canggih dan terbaru, dengan tenaga kerja produksi dan finishing yang berkualitas. Sehingga dapat memenuhi kebutuhan cetak dengan efisien dan harga terjangkau.', 'inti_prima_karya.jpeg'),
(2, 'PT Indomarco Prismatama', 'beroperasi sebagai Indomaret adalah jaringan retail waralaba di Indonesia. Indomaret merupakan salah satu anak perusahaan Salim Group.', 'Logo_Indomaret.jpeg'),
(3, 'PT. JASINDO LINTASTAMA', 'PT. Jasindo Lintastama didirikan di Jakarta sejak tahun 1997. Kantor pusat kami berlokasi di Jakarta, Indonesia', 'pt_jasindo.png'),
(4, 'PT. Champ Resto Indonesia', 'PT. Champ Resto Indonesia adalah perusahaan yang bergerak di industri restoran dan sudah memiliki beberapa cabang di Jakarta, Bekasi, Tangerang, Bogor & Bandung sebanyak 40 outlet dan akan terus bertambah.', 'pt_chamo.png'),
(5, 'PT. Mega Perintis Tbk', 'PT. Mega Perintis Tbk adalah salah satu perusahaan fashion paling ikonik di Indonesia yang berfokus pada fashion pria. Ada beberapa anak perusahaan di bawah bendera grup. Yang pertama, Mega Perintis, menjalankan bisnis retail. Yang kedua, Mega Putra Garment, fokus pada manufaktur. Sedangkan perusahaan ketiga, Mitrelindo Global, melakukan bisnis retail untuk brand internasional seperti Nike. Saat ini terdapat kurang lebih 1.200 karyawan yang bekerja dan berkolaborasi sebagai bagian dari The Winning Team di M', 'mega_perintis.jpeg'),
(6, 'PT. Farika Beton', 'PT. Farika Beton bergerak di bidang pemasok beton cor readymix concrete berserta rental pompa beton siap pakai untuk keperluan / kebutuhan proyek perumahan maupun proyek lainya. ', 'Farika_Beton.png'),
(7, 'Holiday Inn Express Jakarta Wahid Hasyim', 'Holiday Inn Express Jakarta Wahid Hasyim yang merupakan bagian dari InterContinental Hotels Group (IHG®).', 'inn.jpeg'),
(8, 'PT. Yapindo Jaya Abadi', 'PT. Yapindo Jaya Abadi merupakan perusahaan multinasional berbasis IT (Information Technology) bergerak di bidang pendidikan dengan mengembangkan dan mendistribusikan multimedia pendidikan ke seluruh Indonesia dan mancanegara. Berdiri pada tahun 2005 dan telah disah oleh Menteri Hukum dan HAM RI dengan nomor AHU-0045401.AH.01.09. Tahun 2008 sebagai Peseroan Terbatas.\r\n\r\nAdapun hasil pengembangan multimedia kami antara lain : Micron medical Multimedia (M3) yang mencakup ilmu dasar kesehatan (basic medical sc', 'MMM.png'),
(9, 'PT ZYREXINDO MANDIRI BUANA', 'PT ZYREXINDO MANDIRI BUANA merupakan sebuah perusahaan komputer asal Indonesia. Perusahaan ini didirikan pada tahun 1996 di Jakarta. Perusahaan ini menghasilkan berbagai macam perlengkapan komputer. Didirikan pada tahun 1996, PT. Zyrexindo Mandiri Buana desain, memproduksi, mendistribusikan, dan jasa sistem komputer di Indonesia di bawah nama merek Zyrex. Perusahaan ini memiliki hak eksklusif merek dagang dari Zyrex di Indonesia.', '1519877035329.png'),
(10, 'Boga Kreasi Sentosa (RR Cakes)', 'RR Cakes sudah mengawali bisnis sejak 2011.  Berawal dari sebuah bisnis cupcake.  Yang bermula dari Christmas Cupcake, hingga Custom Cupcake dimana para pelanggan kami bisa mendesign Cupcake yang dipesan sesuai dengan keinginan.  Mulai dari warna, model, bentuk, rasa, dll.  Hingga pada saat ini, RR Cakes juga menyediakan WEDDING Cake untuk para customer kami yang akan melangsungkan pernikahan.', 'rr_cakes.png'),
(11, 'STIE Kasih Bangsa', 'Sekolah Tinggi Ilmu Ekonomi (STIE) Kasih Bangsa adalah kampus yang menyelenggarakan program studi Akuntansi dan Manajemen untuk jenjang Sarjana Strata 1 (S1).  Sejak didirikan sampai dengan saat ini, STIE Kasih Bangsa secara konsisten selalu memberikan beasiswa prestasi kepada seluruh mahasiswanya tanpa imbalan ataupun ikatan dinas. ', 'stiekasihbangsa-logo.png'),
(12, 'PT Ramayana Lestary Sentosa, Tbk (Seasons City)', 'Paulus Tumewu dan Tan Lee Chuan ini pertama kali dibuka pada tahun 1978. Toko yang pertama didirikan dengan nama Ramayana Fashion Store ini merupakan harapan pasangan asal Ujung Pandang, Sulawesi Selatan ini untuk mengadu nasib di ibukota Jakarta. ', 'company_5dcbd5645690d.jpeg'),
(13, 'PT Ultima Tekno Solusindo', 'Merupakan Partner Resmi CPSSoft yang menyediakan informasi produk dan layanan yang dapat membantu para pengguna dalam mengoperasikan produk-produk CPSSoft yaitu Accurate Accounting Software dan RENE POS. Bentuk layanan yang kami sediakan mulai dari informasi produk yang dapat diakses secara mandiri melalui website sampai dengan layanan premium yang dapat dipilih sesuai dengan kebutuhan Anda.', 'qgOTyz3M6Cgu7TTypTC7FJ5ZZTZKoTIgvKDPW3WR.jpeg'),
(14, 'Universitas Trisakti D III Akuntansi Perpajakan', 'Program Studi DIII Perpajakan telah berdiri sejak tahun 1991 dan memiliki Visi untuk menjadi Program Studi Unggul di tingkat nasional pada bidang Akuntansi dan Perpajakan. Saat ini Program Studi DIII telah terakreditasi A (sangat baik) dari BAN PT pada tahun 2019.', 'download.png');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(12) NOT NULL,
  `nama_siswa` text NOT NULL,
  `kompetensi_keahlian` text NOT NULL,
  `alamat` text NOT NULL,
  `tlpn` text NOT NULL,
  `email` text NOT NULL,
  `status` text NOT NULL,
  `tahun_lulus` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nama_siswa`, `kompetensi_keahlian`, `alamat`, `tlpn`, `email`, `status`, `tahun_lulus`) VALUES
(10001, 'ABDUL WAHID', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'JL. Merpati Raya No.12', '089652561486', 'S-0038104520@smkth-jakbar.com', 'Bekerja', '2022'),
(10002, 'ACHMAD IRFAN SHOLAHUDDIN', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'KEBON PISANG', '083179545383', 'S-0025490479@smkth-jakbar.com', 'Bekerja', '2022'),
(10003, 'Agus Arbain Mahmud', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'JL. ANGKE INDAH', '083899280196', 'S-0036631478@smkth-jakbar.com', 'Bekerja', '2022'),
(10004, 'ANGEL', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'JL. SUKA JAYA I', '081319865339', 'S-0036018242@smkth-jakbar.com', 'Bekerja', '2022'),
(10005, 'ANTIKA SARI', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'MANDALA WANGI NO.160', '087797550928', 'S-0043717230@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2022'),
(10006, 'DEVI YULIANTI', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'JELAMBAR JAYA II NO.5', '081317745206', 'S-0043717452@smkth-jakbar.com', 'Bekerja', '2022'),
(10007, 'DEWI NOPITA SARI', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'Jl. Pesing Poglar', '08998882027', 'S-0035279361@smkth-jakbar.com', 'Bekerja', '2022'),
(10008, 'DEWI WULAN SARI', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'KAMPUNG ANYAR NO. 130', '089688828424', 'S-0036154022@smkth-jakbar.com', 'Bekerja', '2022'),
(10009, 'Diana Pungky', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'Jl. Teluk Gong', '081319865351', 'S-0030550824@smkth-jakbar.com', 'Wirausaha', '2022'),
(10010, 'Diaz Adrian Praja', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'Kp. Basmol', '081319856289', 'S-0047683951@smkth-jakbar.com', 'Bekerja', '2022'),
(10011, 'FITRI RAMADANI', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'JL. KERTA JAYA III', '081314807306', 'S-0031253472@smkth-jakbar.com', 'Wirausaha', '2022'),
(10012, 'INDRA', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'KAPUK MUARA', '085811058498', 'S-0036495345@smkth-jakbar.com', 'Bekerja', '2022'),
(10013, 'JELITA HANDIANI', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'Jl. Jelambar Aladin Gg. O No. 59', '085920504293', 'S-0043695942@smkth-jakbar.com', 'Bekerja', '2022'),
(10014, 'Khairunisa Apriandini', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'Kav. Polri Blok G II/1657', '081319856288', 'S-0049705131@smkth-jakbar.com', 'Bekerja', '2022'),
(10015, 'LAILA AFRIYANTI', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'KP. KALIMATI', '085591767657', 'S-0041015912@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2022'),
(10016, 'LAURA WANDA PUTRI', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'JEMBATAN II BARAT', '085776378239', 'S-0042810964@smkth-jakbar.com', 'Bekerja', '2022'),
(10017, 'LISNAWATI', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'JL. JELAMBAR JAYA III NO. 16', '085719655439', 'S-0032297872@smkth-jakbar.com', 'Bekerja', '2022'),
(10018, 'Marni', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'Jl Karta Jaya IV No. 33', '081319865342', 'S-0039359492@smkth-jakbar.com', 'Bekerja', '2022'),
(10019, 'MICO RAMDANI SYAHRULTIAS', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'JL. PEKOJAN III/18', '081385362372', 'S-0037652767@smkth-jakbar.com', 'Kuliah', '2022'),
(10020, 'MUHAMMAD ARIF', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'JL. RAWA BEBEK', '081319865359', 'S-0037229380@smkth-jakbar.com', 'Bekerja', '2022'),
(10021, 'MUHAMMAD RAFI', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'JL. LINDUNG', '081212794048', 'S-0040875510@smkth-jakbar.com', 'Bekerja', '2022'),
(10022, 'MUHAMMAD RIZKY', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'JL. ANGKE BARAT', '085700450360', 'S-0035115664@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2022'),
(10023, 'MUHHAMAD SATRIO', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'Jl. Setia Jaya XI No.49', '081298646206', 'S-0040438542@smkth-jakbar.com', 'Bekerja', '2022'),
(10024, 'NG EK HOT', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'Teluk Gong Jl. X No. 168', '081319865354', 'S-0028024008@smkth-jakbar.com', 'Bekerja', '2022'),
(10025, 'OKTAVIA NENGSIH', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'Empang Bahagia', '081294127674', 'S-0036205740@smkth-jakbar.com', 'Bekerja', '2022'),
(10026, 'PEGGY FITRIANI NURDIN', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'RUSUN TAMBORA', '083891620911', 'S-0037250316@smkth-jakbar.com', 'Kuliah', '2022'),
(10027, 'PUTRI FEBRIANI', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'JL. JEMBATAN II SINAR BUDI', '085947535449', 'S-0050550347@smkth-jakbar.com', 'Bekerja', '2022'),
(10028, 'PUTRI MAISAROH', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'Jl. Jelambar Timur', '089685282427', 'S-0043133520@smkth-jakbar.com', 'Bekerja', '2022'),
(10029, 'PUTRI MIRANTI', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'JL. KARYA III GG. FF NO.10', '0895326332749', 'S-0036079202@smkth-jakbar.com', 'Bekerja', '2022'),
(10030, 'RICKO ADI SAPUTRA', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'Jl. Tanah Koja', '085714050590', 'S-0048547056@smkth-jakbar.com', 'Bekerja', '2022'),
(10031, 'RIKA TRI UTAMI', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'PESING KONENG', '085890570683', 'S-0053907518@smkth-jakbar.com', 'Kuliah', '2022'),
(10032, 'SELVYA ARYANTI', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'JL.JELAMBAR UTAMA X NO.43 A', '08979877391', 'S-0030711440@smkth-jakbar.com', 'Kuliah', '2022'),
(10033, 'SHINTYA AULIA PUTRI NABILA', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'JL. GG. BETET DALAM', '085772497531', 'S-0045103332@smkth-jakbar.com', 'Bekerja', '2022'),
(10034, 'SITI NURIKA RAHIM', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'JEMBATAN BESI I', '0881024404377', 'S-0037250304@smkth-jakbar.com', 'Bekerja', '2022'),
(10035, 'SITI SA\'DIYAH', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'KAPUK MUARA', '088213346165', 'S-0042677655@smkth-jakbar.com', 'Kuliah', '2022'),
(10036, 'TRIYANA MUKTI', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'JL. INDRALOKA I NO.89', '085697176072', 'S-0042155174@smkth-jakbar.com', 'Bekerja', '2022'),
(10037, 'VENUS SINTYA RAHAYU', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'KEBON PISANG GG.DAMAI I NO. 5', '081807511960', 'S-0038285189@smkth-jakbar.com', 'Bekerja', '2022'),
(10038, 'WIDYA MAHARANI WISNU PUTRI', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'JL. JELAMBAR BARU RT 04 RW 02', '088902882420', 'S-0042497427@smkth-jakbar.com', 'Bekerja', '2022'),
(10039, 'YUSUF KURNIA', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'Jl. Kp. Janis, Rt. 003/08, Kel. Pekojan, Kec. Tambora', '087872631692', 'S-0031829219@smkth-jakbar.com', 'Kuliah', '2022'),
(10040, 'AKBAR KUSUMA WIJAYA', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'JL. BIDARA RAYA 31 B', '081319856066', 'S-0040431819@smkth-jakbar.com', 'Bekerja', '2022'),
(10041, 'CHANDRA PUTRA DARMAWAN', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'JL.MERPATI I NO.15', '089654005255', 'S-0030047683@smkth-jakbar.com', 'Kuliah', '2022'),
(10042, 'DELA AMELIA DWI SAPUTRI', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'Jln. Kapuk Kebon Jambu', '085714024361', 'S-0042493016@smkth-jakbar.com', 'Bekerja', '2022'),
(10043, 'DWI LIA NOVITA', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'JL. JELAMBAR UTAMA IV', '087793901623', 'S-0037391819@smkth-jakbar.com', 'Kuliah', '2022'),
(10044, 'INSANI METASARI', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'Jln. Anyar 3', '085777809622', 'S-0036079181@smkth-jakbar.com', 'Kuliah', '2022'),
(10045, 'Lina Nofitasari', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'Jl. Peternakan III No. 305', '088211813451', 'S-0040879980@smkth-jakbar.com', 'Bekerja', '2022'),
(10046, 'LINDA CHANIAGO', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'Jl. Kapuk Poglar', '081283364580', 'S-0041072991@smkth-jakbar.com', 'Bekerja', '2022'),
(10047, 'MAHARANI ANANDA PUTRI FIRDAUS', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'L. INDRALOKA 1 Gg.3 NO.60 KL.WIJAYA KUSUMA GROGOL', '081292888678', 'S-0035218396@smkth-jakbar.com', 'Bekerja', '2022'),
(10048, 'MARINI NUROHMA', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'Pesing Poglar', '083806661378', 'S-0041055799@smkth-jakbar.com', 'Bekerja', '2022'),
(10049, 'MEGA AFIANI', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'Jln. Sukajaya 1 No.17', '089652561653', 'S-0042078793@smkth-jakbar.com', 'Bekerja', '2022'),
(10050, 'MELDA', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'Jl. Jembatan Besi II', '083836082484', 'S-0047659689@smkth-jakbar.com', 'Kuliah', '2022'),
(10051, 'MELVINA FARADILLA', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'KP. BALI GG. MESJID', '089670022457', 'S-0034362587@smkth-jakbar.com', 'Bekerja', '2022'),
(10052, 'MUHAMAD HASBI ASHIDIQI', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'JL. ANGKE BARAT', '085939459434', 'S-0044460726@smkth-jakbar.com', 'Bekerja', '2022'),
(10053, 'MUHAMMAD BAYU SANJAYA', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'Teluk Gong Jl. B', '087773881975', 'S-0042558060@smkth-jakbar.com', 'Bekerja', '2022'),
(10054, 'MUHAMMAD FARHAN DWINANTO', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'JL. ANGKE BARAT', '089652574648', 'S-0031862529@smkth-jakbar.com', 'Bekerja', '2022'),
(10055, 'NABILATUN ALFIAH', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'JL. JEMBATAN BESI I', '089504595272', 'S-0043732674@smkth-jakbar.com', 'Bekerja', '2022'),
(10056, 'NELA DESTRIANA DEWI', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'JL. KP. KALIMATI', '08996690395', 'S-0031737404@smkth-jakbar.com', 'Bekerja', '2022'),
(10057, 'NINA NURCAHYATI', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'JL. MERPATI I', '083804626110', 'S-0043815774@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2022'),
(10058, 'NUR AHMAD KHAIRI', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'JL. Merdekasari Pedongkelan', '081319856094', 'S-0043815771@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2022'),
(10059, 'Nur Rohimah', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'Jl Indraloka I', '0895338160849', 'S-0042155169@smkth-jakbar.com', 'Bekerja', '2022'),
(10060, 'Rinni Maspupah', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'Kav. Polri Blok A VIII/192', '081319856099', 'S-3048791835@smkth-jakbar.com', 'Bekerja', '2022'),
(10061, 'RISMA KURNIAWATI', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'JL. JELAMBAR BARU', '085773629609', 'S-0034870241@smkth-jakbar.com', 'Bekerja', '2022'),
(10062, 'Seviana Eka Saputri', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'Kapuk Pos Polisi', '085777443147', 'S-0035479612@smkth-jakbar.com', 'Bekerja', '2022'),
(10063, 'Sifa Nur Fauziah', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'Kampung Poglar', '085771224193', 'S-3038775336@smkth-jakbar.com', 'Bekerja', '2022'),
(10064, 'SILVI ATNADINATA', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'Pesing Poglar', '085715193403', 'S-0041055508@smkth-jakbar.com', 'Kuliah', '2022'),
(10065, 'SILVIA ANGGREANI', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'Jl. Jelambar Barat 3F', '087789043452', 'S-0048404636@smkth-jakbar.com', 'Bekerja', '2022'),
(10066, 'SITI HODIJAH', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'JL. KEBON PISANG NO .33 ', '082298614207', 'S-0045541473@smkth-jakbar.com', 'Kuliah', '2022'),
(10067, 'SOFIATUN NUFUS', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'Jln Anyar Raya 1', '085710129469', 'S-0043530746@smkth-jakbar.com', 'Kuliah', '2022'),
(10068, 'SUCI NOVITA SARI', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'JL. Indraloka 1 GG 3 NO. 12', '081517177232', 'S-0043815781@smkth-jakbar.com', 'Bekerja', '2022'),
(10069, 'Suwanah', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'Kp. Gusti', '085887642004', 'S-3046929418@smkth-jakbar.com', 'Bekerja', '2022'),
(10070, 'UUN NAFIA', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'Rusunawa Tambora 2 Tower C. Lt.V No.04', '087877372399', 'S-0037250298@smkth-jakbar.com', 'Bekerja', '2022'),
(10071, 'VIVIT NUR INDASARI', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'JL. KAPUK KEBON JAMBU', '088289044314', 'S-0041772079@smkth-jakbar.com', 'Bekerja', '2022'),
(10072, 'WULAN NUR OKTAVIANI', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'JL. Kp. Janis Pekojan III', '085711252681', 'S-0036027115@smkth-jakbar.com', 'Bekerja', '2022'),
(10073, 'ZERY HERMAWAN', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'JL. MERPATI 1  NO 75-A', '087714503445', 'S-0043650256@smkth-jakbar.com', 'Bekerja', '2022'),
(10074, 'ZILVI BADRI AULIAH', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'KP. KALIMATI', '0895368517458', 'S-0041055922@smkth-jakbar.com', 'Bekerja', '2022'),
(10075, 'ABDULLAH NURHALIM', 'Bisnis Daring dan Pemasaran (BDP) 1', 'JL. KARYA III', '08571332729', 'S-0036079171@smkth-jakbar.com', 'Bekerja', '2022'),
(10076, 'ABELIA AGUSTIN', 'Bisnis Daring dan Pemasaran (BDP) 1', 'Jl. Jel. Ilir Gg R / 47 A', '085711171846', 'S-0036073408@smkth-jakbar.com', 'Kuliah', '2022'),
(10077, 'AHMAD DENI', 'Bisnis Daring dan Pemasaran (BDP) 1', 'JL.JELAMBAR TIMUR', '085774409134', 'S-0032817361@smkth-jakbar.com', 'Bekerja', '2022'),
(10078, 'ANANDA BUDI SUSANTO', 'Bisnis Daring dan Pemasaran (BDP) 1', 'JL. TELUK GONG', '087712116237', 'S-0040875514@smkth-jakbar.com', 'Kuliah', '2022'),
(10079, 'ARIEL OCTAREZA', 'Bisnis Daring dan Pemasaran (BDP) 1', 'Teluk Gong Jl. I Gg E No.38A', '087788643132', 'S-0042317929@smkth-jakbar.com', 'Bekerja', '2022'),
(10080, 'ARIN DWI ALIANI', 'Bisnis Daring dan Pemasaran (BDP) 1', 'Pesing Koneng', '081294966292', 'S-0036854126@smkth-jakbar.com', 'Bekerja', '2022'),
(10081, 'ARYA BAYU NUR ICHSAN', 'Bisnis Daring dan Pemasaran (BDP) 1', 'PESING POGLAR', '081384955495', 'S-0026450867@smkth-jakbar.com', 'Bekerja', '2022'),
(10082, 'DANDI SAPUTRA', 'Bisnis Daring dan Pemasaran (BDP) 1', 'KAPUK MUARA', '085717187771', 'S-0035393767@smkth-jakbar.com', 'Wirausaha', '2022'),
(10083, 'DEVI AVIELE', 'Bisnis Daring dan Pemasaran (BDP) 1', 'JL. UTAMA SAKTI RAYA NO. 32', '082114024061', 'S-0037212810@smkth-jakbar.com', 'Bekerja', '2022'),
(10084, 'Devi Melia Utari', 'Bisnis Daring dan Pemasaran (BDP) 1', 'Kp. Kalimati', '081319865574', 'S-0032629270@smkth-jakbar.com', 'Bekerja', '2022'),
(10085, 'FITRI NURMAZIYAH', 'Bisnis Daring dan Pemasaran (BDP) 1', 'JL. JELAMBAR GG S', '081284377882', 'S-0042497415@smkth-jakbar.com', 'Bekerja', '2022'),
(10086, 'GUFRON AZIS', 'Bisnis Daring dan Pemasaran (BDP) 1', 'JL. PERDANA RAYA', '088291292520', 'S-0053065577@smkth-jakbar.com', 'Kuliah', '2022'),
(10087, 'IWAN SANTOSO', 'Bisnis Daring dan Pemasaran (BDP) 1', 'TELUK GONG TANGGUL', '087771694740', 'S-0018015500@smkth-jakbar.com', 'Bekerja', '2022'),
(10088, 'Jessy Apriliani', 'Bisnis Daring dan Pemasaran (BDP) 1', 'Jl. Kapuk Muara', '081319865638', 'S-0042677674@smkth-jakbar.com', 'Bekerja', '2022'),
(10089, 'M. Putra Erlangga', 'Bisnis Daring dan Pemasaran (BDP) 1', 'Jl Jelambar Kb. Pisang No.84', '087771208813', 'S-0037391821@smkth-jakbar.com', 'Bekerja', '2022'),
(10090, 'Marshel Mahendra', 'Bisnis Daring dan Pemasaran (BDP) 1', 'Pesing Koneng', '088294618765', 'S-0055308917@smkth-jakbar.com', 'Wirausaha', '2022'),
(10091, 'Mohammad Ikmal Maulana', 'Bisnis Daring dan Pemasaran (BDP) 1', 'Rusunawa Tambora I Twr. B Lt. VIII/08', '081319865640', 'S-0037250292@smkth-jakbar.com', 'Bekerja', '2022'),
(10092, 'MUHAMAD RIZKI', 'Bisnis Daring dan Pemasaran (BDP) 1', 'JL JELAMBAR ILIR', '081385842327', 'S-0033678651@smkth-jakbar.com', 'Bekerja', '2022'),
(10093, 'MUHAMMAD EQI SAPUTRA', 'Bisnis Daring dan Pemasaran (BDP) 1', 'JL JELAMBAR BARAT', '08977559542', 'S-0027096584@smkth-jakbar.com', 'Bekerja', '2022'),
(10094, 'MUHAMMAD KHAERUL BAHRI', 'Bisnis Daring dan Pemasaran (BDP) 1', 'KAPUK MUARA', '089612480149', 'S-0044075442@smkth-jakbar.com', 'Bekerja', '2022'),
(10095, 'Najwa Nur Kariem', 'Bisnis Daring dan Pemasaran (BDP) 1', 'Jl. Jelambar Ilir', '081319865646', 'S-0042930988@smkth-jakbar.com', 'Wirausaha', '2022'),
(10096, 'Nilan Iriyanti', 'Bisnis Daring dan Pemasaran (BDP) 1', 'Kp. Kalimati', '081319865648', 'S-0031725248@smkth-jakbar.com', 'Bekerja', '2022'),
(10097, 'Noni Oktaviani', 'Bisnis Daring dan Pemasaran (BDP) 1', 'Jl Kebon Pisang', '089693558030', 'S-0039121234@smkth-jakbar.com', 'Bekerja', '2022'),
(10098, 'Pratama Zinedine Yazid Zidane', 'Bisnis Daring dan Pemasaran (BDP) 1', 'Rusunawa Tambora II Twr. C Lt. XII/13', '081319865568', 'S-0040813780@smkth-jakbar.com', 'Bekerja', '2022'),
(10099, 'RAIHAN AHMAD ELIA', 'Bisnis Daring dan Pemasaran (BDP) 1', 'JEMBATAN GAMBANG I', '087789045684', 'S-0041999980@smkth-jakbar.com', 'Wirausaha', '2022'),
(10100, 'RAJA DIKA PRAYOGA', 'Bisnis Daring dan Pemasaran (BDP) 1', 'Jl. Merpati No.84', '085894621947', 'S-0049243282@smkth-jakbar.com', 'Wirausaha', '2022'),
(10101, 'RAMSES GOZALI', 'Bisnis Daring dan Pemasaran (BDP) 1', 'JL. ANGKE BARAT', '085798249112', 'S-0030535999@smkth-jakbar.com', 'Bekerja', '2022'),
(10102, 'RANGGA RAYA SAFA\'AT', 'Bisnis Daring dan Pemasaran (BDP) 1', 'Kapuk Poglar', '088223924903', 'S-0032710884@smkth-jakbar.com', 'Bekerja', '2022'),
(10103, 'REZA FIRMANSJAH', 'Bisnis Daring dan Pemasaran (BDP) 1', 'Teluk Gong Jl. Masda Raya No. 27', '088299072149', 'S-0043919179@smkth-jakbar.com', 'Bekerja', '2022'),
(10104, 'RISMATU ZAHRA', 'Bisnis Daring dan Pemasaran (BDP) 1', 'Kalimati', '089654802938', 'S-0035279358@smkth-jakbar.com', 'Bekerja', '2022'),
(10105, 'TRIO ANDIKA', 'Bisnis Daring dan Pemasaran (BDP) 1', '(tidak diisi)', '087876161647', 'S-0036397013@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2022'),
(10106, 'Verdi Putra Satria', 'Bisnis Daring dan Pemasaran (BDP) 1', 'Kebon Pisang', '081319865656', 'S-0043650265@smkth-jakbar.com', 'Bekerja', '2022'),
(10107, 'WULAN CAHYANI', 'Bisnis Daring dan Pemasaran (BDP) 1', 'JL. KAMPUNG JANIS', '081319865658', 'S-0037652755@smkth-jakbar.com', 'Bekerja', '2022'),
(10108, 'Yoga Dwi Prasetyo', 'Bisnis Daring dan Pemasaran (BDP) 1', 'Pesing Poglar', '081319865659', 'S-0035279463@smkth-jakbar.com', 'Bekerja', '2022'),
(10109, 'Yunita Adetia Saputri', 'Bisnis Daring dan Pemasaran (BDP) 1', 'Jl. Indraloka I GG. Damai I', '081319865660', 'S-0043815784@smkth-jakbar.com', 'Bekerja', '2022'),
(10110, 'Achmad Alfie Sa\'dan Widodo', 'Bisnis Daring dan Pemasaran (BDP) 2', 'Jl. Kebon Pisang', '085775607069', 'S-3031548172@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2022'),
(10111, 'ADI PUTRA', 'Bisnis Daring dan Pemasaran (BDP) 2', 'TELUK GONG JL. I NO.4 D', '085810295852', 'S-0043819339@smkth-jakbar.com', 'Bekerja', '2022'),
(10112, 'Aliyah Maisuni', 'Bisnis Daring dan Pemasaran (BDP) 2', 'Komp. BNI 46 Pesing', '089508053036', 'S-0046593810@smkth-jakbar.com', 'Bekerja', '2022'),
(10113, 'ALYA SAFA KAMILA', 'Bisnis Daring dan Pemasaran (BDP) 2', 'KOMPLEK DHI BLOK SS NO.31', '085775030577', 'S-0042677658@smkth-jakbar.com', 'Bekerja', '2022'),
(10114, 'AMALIA SYAMSIATI ALIFAH', 'Bisnis Daring dan Pemasaran (BDP) 2', 'PEDONGKELAN', '081617803977', 'S-0026051899@smkth-jakbar.com', 'Bekerja', '2022'),
(10115, 'BAGAS SUKMO', 'Bisnis Daring dan Pemasaran (BDP) 2', 'JL. KRENDANG TENGAH', '089638666215', 'S-0029014583@smkth-jakbar.com', 'Kuliah', '2022'),
(10116, 'FAIZAH PUTRI AULIA', 'Bisnis Daring dan Pemasaran (BDP) 2', 'Jl. Pesing Poglar', '085719558302', 'S-0041072974@smkth-jakbar.com', 'Kuliah', '2022'),
(10117, 'FANDI SAPUTRA', 'Bisnis Daring dan Pemasaran (BDP) 2', 'TELUK GONG ALADIN 4 B', '085794396547', 'S-0029588345@smkth-jakbar.com', 'Kuliah', '2022'),
(10118, 'FIORELLA RAISYA ERVANI', 'Bisnis Daring dan Pemasaran (BDP) 2', 'Jl. Kemenangan V Gg 1', '089524521717', 'S-0041250058@smkth-jakbar.com', 'Bekerja', '2022'),
(10119, 'INDRA RUKMANA', 'Bisnis Daring dan Pemasaran (BDP) 2', 'JL. ASEMKA', '085282068449', 'S-0035159290@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2022'),
(10120, 'JULAEHA', 'Bisnis Daring dan Pemasaran (BDP) 2', 'JEMBATAN II SINAR BUDI', '085704662958', 'S-0033049116@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2022'),
(10121, 'Kevin Afizeno', 'Bisnis Daring dan Pemasaran (BDP) 2', 'Rusunawa Tambora  II Twr. C Lt. VIII/03', '082112374110', 'S-0040812422@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2022'),
(10122, 'MAHESA GENTA SAKAWAYANA', 'Bisnis Daring dan Pemasaran (BDP) 2', 'JL. TELUK GONG KEBON PISANG', '089516091648', 'S-0043681339@smkth-jakbar.com', 'Bekerja', '2022'),
(10123, 'MUHAMAD WILDAN RAMADHAN', 'Bisnis Daring dan Pemasaran (BDP) 2', 'Lapang Bola', '083866039483', 'S-0027255606@smkth-jakbar.com', 'Bekerja', '2022'),
(10124, 'MUHAMMAD FADIL', 'Bisnis Daring dan Pemasaran (BDP) 2', 'Jl. Pekojan III Rt. 010/07, Kel. Pekojan, Kec. Tambora', '08993509093', 'S-0029162290@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2022'),
(10125, 'MUHAMMAD FARHAN MAULANA', 'Bisnis Daring dan Pemasaran (BDP) 2', 'JL. PEKOJAN III GG.II', '085772931283', 'S-0031192839@smkth-jakbar.com', 'Kuliah', '2022'),
(10126, 'MUHAMMAD JIHAR ADIB', 'Bisnis Daring dan Pemasaran (BDP) 2', 'Jl. Angke Indah III', '08815372062', 'S-0025715439@smkth-jakbar.com', 'Kuliah', '2022'),
(10127, 'Nur Rizkiyah', 'Bisnis Daring dan Pemasaran (BDP) 2', 'Jl. Jelambar KB. Pisang', '083894534750', 'S-0041568864@smkth-jakbar.com', 'Bekerja', '2022'),
(10128, 'RAISAH NURUL AMIN', 'Bisnis Daring dan Pemasaran (BDP) 2', 'Kampung Basmol', '081280346302', 'S-0042735428@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2022'),
(10129, 'RAYNANDA DEWATA', 'Bisnis Daring dan Pemasaran (BDP) 2', 'JL. SWADAYA DALAM', '085691201069', 'S-0031936349@smkth-jakbar.com', 'Kuliah', '2022'),
(10130, 'RIDHO FIRMAN SYACH', 'Bisnis Daring dan Pemasaran (BDP) 2', 'JELAMBAR JAYA RT 04/02', '081289915361', 'S-0037391820@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2022'),
(10131, 'Rifky Akbar Abdullah', 'Bisnis Daring dan Pemasaran (BDP) 2', 'Kp. Poglar', '088221984241', 'S-0035234407@smkth-jakbar.com', 'Kuliah', '2022'),
(10132, 'RISKA', 'Bisnis Daring dan Pemasaran (BDP) 2', 'KAMPUNG GUSTI Gg. KANTONG', '083805372452', 'S-0002769325@smkth-jakbar.com', 'Bekerja', '2022'),
(10133, 'RISKA NURUL FADILAH', 'Bisnis Daring dan Pemasaran (BDP) 2', 'KAPUK MUARA', '08976308602', 'S-0044357863@smkth-jakbar.com', 'Bekerja', '2022'),
(10134, 'Rosa Widiya Amaliah', 'Bisnis Daring dan Pemasaran (BDP) 2', 'Kebon Pisang', '085894257160', 'S-0033447686@smkth-jakbar.com', 'Bekerja', '2022'),
(10135, 'SAGDA MAHENDRA', 'Bisnis Daring dan Pemasaran (BDP) 2', 'KAPUK MUARA', '088902071932', 'S-0034078524@smkth-jakbar.com', 'Bekerja', '2022'),
(10136, 'SELBY AYU ALZAHRA', 'Bisnis Daring dan Pemasaran (BDP) 2', 'JL. AL AMANAH RAYA', '085718394615', 'S-0042155170@smkth-jakbar.com', 'Bekerja', '2022'),
(10137, 'Silvia', 'Bisnis Daring dan Pemasaran (BDP) 2', 'Jl. Muara Karang', '081319865237', 'S-0024921438@smkth-jakbar.com', 'Bekerja', '2022'),
(10138, 'SITI MAYANGSARI RAHMADANI', 'Bisnis Daring dan Pemasaran (BDP) 2', 'JL. Jelambar Timur', '081295251184', 'S-0036495364@smkth-jakbar.com', 'Bekerja', '2022'),
(10139, 'SITI NUR NABILLA', 'Bisnis Daring dan Pemasaran (BDP) 2', 'JL. JELAMBAR ILIR Gg. IMAN III NO. 18', '083895346503', 'S-0034875424@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2022'),
(10140, 'TEGAR SAPUTRA', 'Bisnis Daring dan Pemasaran (BDP) 2', 'Jl. Jelambar Selatan 2', '085782751407', 'S-0040438505@smkth-jakbar.com', 'Bekerja', '2022'),
(10141, 'Tommy Yuscandra', 'Bisnis Daring dan Pemasaran (BDP) 2', 'Jalan Desa Pagar Dewa', '085381682143', 'S-0054385585@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2022'),
(10142, 'YULIANTI', 'Bisnis Daring dan Pemasaran (BDP) 2', 'JL. SINGANTAKA', '083873086400', 'S-0027832943@smkth-jakbar.com', 'Bekerja', '2022'),
(10143, 'ZAKI AKBAR WIJAYANTO', 'Bisnis Daring dan Pemasaran (BDP) 2', 'JL. KAPUK KEBON JAMBU', '082125938038', 'S-0036339082@smkth-jakbar.com', 'Bekerja', '2022'),
(10144, 'AMELIA OKTAVIANI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'Kp.Poglar', '081717152454', 'S-0037106486@smkth-jakbar.com', 'Bekerja', '2022'),
(10145, 'AMELIA SHADIYAH', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'JL. MERPATI RAYA NO. 12', '08998875420', 'S-0043815790@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2022'),
(10146, 'ARDELIA SALSABILA', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'jl al amanah', '088210926195', 'S-0042252780@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2022'),
(10147, 'ARINI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'PESING GARDEN', '08889694037', 'S-0026355381@smkth-jakbar.com', 'Bekerja', '2022'),
(10148, 'Audi Valentina', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'Jl.. Jelambar Utama IV Gg Abadi', '081292962893', 'S-0033479380@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2022'),
(10149, 'AYU LESTARI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'HEMAT RAYA NO. 8 A', '085719455402', 'S-0043717242@smkth-jakbar.com', 'Kuliah', '2022'),
(10150, 'Dara Wardhani', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'Jl. H. Musanif', '081319865284', 'S-0031942999@smkth-jakbar.com', 'Bekerja', '2022'),
(10151, 'DEDE ARUM SARI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'JL. ANYAR IV', '081319865285', 'S-0037478273@smkth-jakbar.com', 'Bekerja', '2022'),
(10152, 'DEVI NUR AFRILIA', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'JL. Terate VI', '085899180161', 'S-0013744084@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2022'),
(10153, 'DEWITA CAHYANI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'KP. GUSTI PINTU AIR', '085591927287', 'S-0042999138@smkth-jakbar.com', 'Kuliah', '2022'),
(10154, 'DIAN PATRIANI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'JL. KP. BARU', '089652577075', 'S-0034814947@smkth-jakbar.com', 'Bekerja', '2022'),
(10155, 'DINA NOVITA', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'JEMBATAN GAMBANG I', '083877055480', 'S-0044579481@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2022'),
(10156, 'Dinii Aditia Putri Lubis', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'Jl. Al Amanah Raya GG. Damai 5 No. 41', '085781133894', 'S-0041734442@smkth-jakbar.com', 'Wirausaha', '2022'),
(10157, 'EKA YULIA SARI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'JL. KERTAJAYA IV DLM/13', '0895326129358', 'S-0036323866@smkth-jakbar.com', 'Bekerja', '2022'),
(10158, 'Ersanda Aprilia', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'Jl. Kapuk Muara', '085694538421', 'S-0042012107@smkth-jakbar.com', 'Wirausaha', '2022'),
(10159, 'FADIANA', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'Jl. Kp Poglar No.42', '085921004529', 'S-0043571294@smkth-jakbar.com', 'Bekerja', '2022'),
(10160, 'ICHA RAHMA NOVITASARI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'Jl. Tiang Bendera II No. 122', '081212313165', 'S-0037511570@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2022'),
(10161, 'Ismi Syalina Hidayat', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'Krendang Tengah', '0895609697100', 'S-0041683559@smkth-jakbar.com', 'Bekerja', '2022'),
(10162, 'JESI HAFILLAH', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'JL.SAWAH LIO IV/12', '085697474986', 'S-0039985704@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2022'),
(10163, 'JULIA LESTARI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'UTAN JATI', '08972392735', 'S-0041273430@smkth-jakbar.com', 'Kuliah', '2022'),
(10164, 'KEKE NURKHOLIFAH', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'JL. SEMUT UJUNG', '085640203606', 'S-0037359333@smkth-jakbar.com', 'Kuliah', '2022'),
(10165, 'KOLIF MULYANI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'KAPUK MUARA', '0895347352038', 'S-0035958608@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2022'),
(10166, 'LUVIYANTI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'JL. ANYAR RAYA I RT. 01/10 WIJAYA KUSUMA', '085894258914', 'S-0031895848@smkth-jakbar.com', 'Bekerja', '2022'),
(10167, 'MARS WINDA AGUSTIN', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'JL. JELAMBAR SELATAN II', '05894279656', 'S-0036018238@smkth-jakbar.com', 'Bekerja', '2022'),
(10168, 'Maulida Azkia', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'Teluk Gong', '088232210462', 'S-0043873909@smkth-jakbar.com', 'Bekerja', '2022'),
(10169, 'Mellida Devitasari', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'Jl. Kapuk Muara', '081319865311', 'S-0041079541@smkth-jakbar.com', 'Kuliah', '2022'),
(10170, 'NADILA RISCHA HIDAYAT', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'JL. JELAMBAR BARU RT 09 RW 01', '087888869951', 'S-0042497433@smkth-jakbar.com', 'Kuliah', '2022'),
(10171, 'NESSA APRILA ROSA', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'Jl. Hadiah Utama 2 Blok F6', '085694266043', 'S-0043815772@smkth-jakbar.com', 'Bekerja', '2022'),
(10172, 'Oktaviana', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'Kebon Pala', '081319865315', 'S-0014757924@smkth-jakbar.com', 'Kuliah', '2022'),
(10173, 'PATRICIA OLIVIA BUBANE', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'JL. INTAN KOMPLEK PERMATA NO. 176', '081511770697', 'S-0041954830@smkth-jakbar.com', 'Wirausaha', '2022'),
(10174, 'Reza Thalia Salsabila', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'Teluk Gong', '083815522799', 'S-0040651298@smkth-jakbar.com', 'Wirausaha', '2022'),
(10175, 'RISNA JUENDANG', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'JL. ANGKE BARAT', '085880859895', 'S-0035115764@smkth-jakbar.com', 'Kuliah', '2022'),
(10176, 'Ros Setiawati', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'Kp. Pesing Poglar', '088298487561', 'S-0035279369@smkth-jakbar.com', 'Bekerja', '2022'),
(10177, 'Rosyana Nurani', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'Jl. Jembatan II Barat', '089503237061', 'S-0049547739@smkth-jakbar.com', 'Bekerja', '2022'),
(10178, 'SASKIA ALIYA ZAHRA', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'KEBON PISANG NO. 30', '083899594148', 'S-0043717236@smkth-jakbar.com', 'Kuliah', '2022'),
(10179, 'SINTA ARYANA WENDARI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'JL. INDRALOKA I NO. 77', '089601859210', 'S-0031257098@smkth-jakbar.com', 'Wirausaha', '2022'),
(10180, 'Supriyana', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'Kp. Gusti Pintu Air', '081319865326', 'S-0034563482@smkth-jakbar.com', 'Kuliah', '2022'),
(10181, 'TIARA HENDITA PUTRI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'Jl. Krendang Barat Rt. 012/05, Kel. Krendang, Kec. Tambora', '085718634780', 'S-0045268259@smkth-jakbar.com', 'Wirausaha', '2022'),
(10182, 'VERONICA PATRICIA', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'MASDA III TELUK GONG', '089622392169', 'S-0041236311@smkth-jakbar.com', 'Kuliah', '2022'),
(10183, 'WULAN SUCI FITRIANI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'TELUK GONG JL.LINDUNG', '085591945690', 'S-0014236567@smkth-jakbar.com', 'Bekerja', '2022'),
(10184, 'ZAHRA WAHYU TRIANDINI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'KP BALI', '0895330580179', 'S-0036154021@smkth-jakbar.com', 'Bekerja', '2022'),
(10185, 'AISYA YUNIARTI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'Jl. Jelambar Selatan II', '085771109849', 'S-0049174782@smkth-jakbar.com', 'Wirausaha', '2022'),
(10186, 'ALMA ELENA RACHMAN', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'JL. KAPUK POGLAR', '081319856153', 'S-0033448194@smkth-jakbar.com', 'Wirausaha', '2022'),
(10187, 'AMANDA SALSABILAH SAFITRI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'Kp. Kalimati', '081319856154', 'S-0035279365@smkth-jakbar.com', 'Bekerja', '2022'),
(10188, 'BALQIS AULIA WIJAYA', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'JL. KAMPUNG BALI PESING', '081319856156', 'S-0042155189@smkth-jakbar.com', 'Bekerja', '2022'),
(10189, 'Chika Maulida Dewi', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'Jl. Karya Barat I No. 7', '083109984812', 'S-3039033248@smkth-jakbar.com', 'Bekerja', '2022'),
(10190, 'DEVI RIANTI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'TELUK GONG', '085776856189', 'S-0042959393@smkth-jakbar.com', 'Wirausaha', '2022'),
(10191, 'Diah Ayu Krisna Dwi Putri', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'Kampung Gusti', '081319856160', 'S-0041050276@smkth-jakbar.com', 'Wirausaha', '2022'),
(10192, 'Dian Aprilliani', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'Jl. Kiara Raya', '081319856161', 'S-0043854960@smkth-jakbar.com', 'Wirausaha', '2022'),
(10193, 'Dina Agustina', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'Kamp. Gusti Kebon Pala', '081319856162', 'S-0044489535@smkth-jakbar.com', 'Bekerja', '2022'),
(10194, 'DIYAN RAHMAWATI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'Jl. Pekojan III Gg. IV', '083172042224', 'S-0042838367@smkth-jakbar.com', 'Bekerja', '2022'),
(10195, 'FUJA LISTY YANTI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'JL. JELAMBAR UATAMA VI RT 001/011 NO 32 ELAMBAR', '081319856165', 'S-0034875910@smkth-jakbar.com', 'Bekerja', '2022'),
(10196, 'KARINA PUTRI OXTAVIANI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'JL JELAMBAR ILIR', '081319856166', 'S-0029033932@smkth-jakbar.com', 'Wirausaha', '2022'),
(10197, 'KIKI FATIKA SYAHRANI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'Jl. Krapu KP.Japat Kel. Ancol Kec. Pademangan', '081319856167', 'S-0041151713@smkth-jakbar.com', 'Bekerja', '2022'),
(10198, 'Maharani Syaidina Djulianti', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'KP. Kalimati', '081319856168', 'S-0042311784@smkth-jakbar.com', 'Bekerja', '2022'),
(10199, 'MARLINA', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'KP. KALIMATI', '081319856169', 'S-0035279458@smkth-jakbar.com', 'Bekerja', '2022'),
(10200, 'Meilinda Felisyawati', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'Jl. Jelambar Utama VIII No. 26', '081319856170', 'S-3045419408@smkth-jakbar.com', 'Kuliah', '2022'),
(10201, 'MELINA NUR SAPITRI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'Jl.Perdana Raya No.7', '081319856171', 'S-0020084349@smkth-jakbar.com', 'Bekerja', '2022'),
(10202, 'MUNI\'AH', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'KAPUK MUARA', '081319856123', 'S-0045719712@smkth-jakbar.com', 'Bekerja', '2022'),
(10203, 'Nadya Putri', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'JL. Kali Anyar III', '081319856124', 'S-0041417399@smkth-jakbar.com', 'Bekerja', '2022'),
(10204, 'Nanda Jasika', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'Kp. Gusti', '081319856126', 'S-0059199255@smkth-jakbar.com', 'Bekerja', '2022'),
(10205, 'Nisa Dwi Ramanda', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'Kapuk Muara', '081319856127', 'S-0044075458@smkth-jakbar.com', 'Bekerja', '2022'),
(10206, 'NUR ASIDIAH', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'UTAMA SAKTI I', '081319856130', 'S-0043717235@smkth-jakbar.com', 'Bekerja', '2022'),
(10207, 'PIRANIH', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'KAPUK VOGLAR', '081319856131', 'S-0035234405@smkth-jakbar.com', 'Bekerja', '2022'),
(10208, 'Putri Widhi Astuti', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'Empang Bahagia', '081319856132', 'S-0042050913@smkth-jakbar.com', 'Bekerja', '2022'),
(10209, 'RINI MARSITA', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'JL. JEMBATAN ITEM NO.3', '081319856134', 'S-0043513320@smkth-jakbar.com', 'Bekerja', '2022'),
(10210, 'RISKA KHARISMA', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'Jl. Pesing Koneng', '081319856135', 'S-0041072869@smkth-jakbar.com', 'Wirausaha', '2022'),
(10211, 'RISNA PRIYANTI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'JL. INDRALOKA I', '081319856136', 'S-0036079198@smkth-jakbar.com', 'Bekerja', '2022'),
(10212, 'RUNI RAHAYU', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'JL TIANG BENDERA 1/124', '081319856137', 'S-0038904860@smkth-jakbar.com', 'Bekerja', '2022'),
(10213, 'SHEVA HANDINI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'KRENDANG TENGAH RT. 011/03', '081319856138', 'S-0036771555@smkth-jakbar.com', 'Bekerja', '2022'),
(10214, 'SITI NURHALIZA ARDI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'PESING KONENG RT 04/01', '081319856139', 'S-0036815114@smkth-jakbar.com', 'Bekerja', '2022'),
(10215, 'SUCI NABILAH KHAERUS', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'Pesing Poglar RT.01/05', '081319856140', 'S-0023707652@smkth-jakbar.com', 'Bekerja', '2022'),
(10216, 'TANIA NUR ALFITRIANI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'JL. BUDI MULIA', '081319856141', 'S-0041632904@smkth-jakbar.com', 'Bekerja', '2022'),
(10217, 'TIAH', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'KAMPUNG BALI PESING', '081319856142', 'S-0018990790@smkth-jakbar.com', 'Bekerja', '2022'),
(10218, 'Umairoh', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'Kamp. Gusti GG. Kantong', '081319856143', 'S-0036753828@smkth-jakbar.com', 'Bekerja', '2022'),
(10219, 'VELINDA NUR AZIZAH', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'JL. JELAMBAR JAYA', '081319856144', 'S-0042033237@smkth-jakbar.com', 'Bekerja', '2022'),
(10220, 'WAHYU KURNIAWATI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'JL. AL AMANAH NO. 95 RT. 09/10', '081319856145', 'S-0042694254@smkth-jakbar.com', 'Bekerja', '2022'),
(10221, 'WULAN SUNINGSIH', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'Kp.Pesing Poglar', '081319856147', 'S-0035279356@smkth-jakbar.com', 'Bekerja', '2022'),
(10222, 'YENTI HERAWATI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'JL UTAMA SAKTI I NO. 126', '081319856148', 'S-0043133486@smkth-jakbar.com', 'Bekerja', '2022'),
(10223, 'ZHILA SHOFA NAFSIAH', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'JL. INDRALOKA I', '081319856149', 'S-0043717244@smkth-jakbar.com', 'Bekerja', '2022'),
(10224, 'ABDURRAHMAN ASNADI', 'Teknik Komputer dan Jaringan (TKJ) 1', 'JL. KP. BALI PESING', '0895704295901', 'S-0031117200@smkth-jakbar.com', 'Bekerja', '2022'),
(10225, 'ADI NUR', 'Teknik Komputer dan Jaringan (TKJ) 1', 'JL. SOSIAL', '085697580705', 'S-0042930983@smkth-jakbar.com', 'Bekerja', '2022'),
(10226, 'Aditya Saputra', 'Teknik Komputer dan Jaringan (TKJ) 1', 'Jl. Tanjung Wangi', '08871222707', 'S-0035432473@smkth-jakbar.com', 'Bekerja', '2022'),
(10227, 'AIRA ANDI AHMAD', 'Teknik Komputer dan Jaringan (TKJ) 1', 'GG. MANDALIKA NO.30 RT.006/06', '0895501078211', 'S-0040615106@smkth-jakbar.com', 'Bekerja', '2022'),
(10228, 'Alfadli Merdianta', 'Teknik Komputer dan Jaringan (TKJ) 1', 'Jl Kebon Pala', '081319889544', 'S-0043012154@smkth-jakbar.com', 'Bekerja', '2022'),
(10229, 'Ariska Witri Astuti', 'Teknik Komputer dan Jaringan (TKJ) 1', 'KB. Sayur Kamp Gusti', '085741839499', 'S-0042296207@smkth-jakbar.com', 'Bekerja', '2022'),
(10230, 'DANI DARMAWAN', 'Teknik Komputer dan Jaringan (TKJ) 1', 'JL. JELAMBAR UTAMA IV RT. 005/008', '085779250226', 'S-0034855699@smkth-jakbar.com', 'Bekerja', '2022'),
(10231, 'DANIEL PRADITYA', 'Teknik Komputer dan Jaringan (TKJ) 1', 'Jl. Jelambar Utama VIII Rt 002/011 Jelambar Baru J', '089513580952', 'S-0033479377@smkth-jakbar.com', 'Bekerja', '2022'),
(10232, 'DHANNIS FARDINTA', 'Teknik Komputer dan Jaringan (TKJ) 1', 'JL PESING POGLAR', '081319889540', 'S-0026450845@smkth-jakbar.com', 'Bekerja', '2022'),
(10233, 'DIMAS ADITIYA', 'Teknik Komputer dan Jaringan (TKJ) 1', 'JL MOA', '081912804793', 'S-0038073109@smkth-jakbar.com', 'Bekerja', '2022'),
(10234, 'FARID IHWATUL MUSLIMIN', 'Teknik Komputer dan Jaringan (TKJ) 1', 'INDRALOKA I GG DAMAI I', '081319889537', 'S-0048626293@smkth-jakbar.com', 'Bekerja', '2022'),
(10235, 'FAUZI', 'Teknik Komputer dan Jaringan (TKJ) 1', 'JL. ANGKE INDAH', '081319889536', 'S-0033522483@smkth-jakbar.com', 'Bekerja', '2022'),
(10236, 'Haryanto', 'Teknik Komputer dan Jaringan (TKJ) 1', 'Kalimati', '081319889535', 'S-0031737212@smkth-jakbar.com', 'Bekerja', '2022'),
(10237, 'HERI SETYAWAN', 'Teknik Komputer dan Jaringan (TKJ) 1', 'JL KAPUK MUARA', '0895336944574', 'S-0042999125@smkth-jakbar.com', 'Bekerja', '2022'),
(10238, 'IDHAM RAHMAN', 'Teknik Komputer dan Jaringan (TKJ) 1', 'JL. PESING POGLAR', '081319889533', 'S-0041055915@smkth-jakbar.com', 'Bekerja', '2022'),
(10239, 'Idris Fadila', 'Teknik Komputer dan Jaringan (TKJ) 1', 'Jl. Damai V', '081319889531', 'S-0035859722@smkth-jakbar.com', 'Bekerja', '2022'),
(10240, 'M. JAENI SAPUTRA', 'Teknik Komputer dan Jaringan (TKJ) 1', 'Jl. SWADAYA PESING POGLAR', '081297392585', 'S-0041055879@smkth-jakbar.com', 'Bekerja', '2022'),
(10241, 'MARTIN', 'Teknik Komputer dan Jaringan (TKJ) 1', 'JL. TELUK GONG', '089510141821', 'S-0030390543@smkth-jakbar.com', 'Bekerja', '2022'),
(10242, 'MOHAMAD ARDIANSYAH RIZKI DERMAWAN', 'Teknik Komputer dan Jaringan (TKJ) 1', 'KAPUK MUARA', '081319889528', 'S-0037008419@smkth-jakbar.com', 'Bekerja', '2022'),
(10243, 'Muhamad Jazuli Oktafio', 'Teknik Komputer dan Jaringan (TKJ) 1', 'Jl. Teluk Gong', '081319889549', 'S-0022646844@smkth-jakbar.com', 'Kuliah', '2022'),
(10244, 'MUHAMAT REVA RIZKI SAPUTRA', 'Teknik Komputer dan Jaringan (TKJ) 1', 'JL. KARYA BARAT I', '081319889527', 'S-0042155183@smkth-jakbar.com', 'Bekerja', '2022'),
(10245, 'Muhammad Agus Triardi', 'Teknik Komputer dan Jaringan (TKJ) 1', 'Jl. Jelambar Utama VIII No 6', '081319889550', 'S-0033714287@smkth-jakbar.com', 'Bekerja', '2022'),
(10246, 'Muhammad Rafli', 'Teknik Komputer dan Jaringan (TKJ) 1', 'Pesing Koneng', '081319865508', 'S-0025616381@smkth-jakbar.com', 'Bekerja', '2022'),
(10247, 'MUHAMMAD RUSYDI MURTADHO', 'Teknik Komputer dan Jaringan (TKJ) 1', 'Jl. Setia Jaya', '0895365435563', 'S-0040438548@smkth-jakbar.com', 'Kuliah', '2022'),
(10248, 'Nana Maolana', 'Teknik Komputer dan Jaringan (TKJ) 1', 'Jl. Perdana 001/001, Jelambar', '081298771756', 'S-0037154560@smkth-jakbar.com', 'Bekerja', '2022'),
(10249, 'Nanda Arga Raditya', 'Teknik Komputer dan Jaringan (TKJ) 1', 'Jl. Damai V No. 40', '081319865513', 'S-0035870529@smkth-jakbar.com', 'Bekerja', '2022'),
(10250, 'NUR OKKY BINTANG SAPUTRA', 'Teknik Komputer dan Jaringan (TKJ) 1', 'Jl. Jelambar Utama IV Rt 007/08 no 51, Jelambar Ja', '081413422594', 'S-0026910172@smkth-jakbar.com', 'Bekerja', '2022'),
(10251, 'RENDI PEBRIANSYAH', 'Teknik Komputer dan Jaringan (TKJ) 1', 'KP. GUSTI GG. KANTONG', '081511556764', 'S-0043012143@smkth-jakbar.com', 'Bekerja', '2022'),
(10252, 'Rico Prianto', 'Teknik Komputer dan Jaringan (TKJ) 1', 'Jl. Rawa Bebek', '0895401420507', 'S-0037111516@smkth-jakbar.com', 'Bekerja', '2022'),
(10253, 'RIVALDY IRAWAN', 'Teknik Komputer dan Jaringan (TKJ) 1', 'JELAMBAR UTAMA IV', '081319865522', 'S-0026910181@smkth-jakbar.com', 'Bekerja', '2022'),
(10254, 'Rizki Dwi Hapijar', 'Teknik Komputer dan Jaringan (TKJ) 1', 'Kp. Kalimati', '0895704299527', 'S-0045061771@smkth-jakbar.com', 'Bekerja', '2022'),
(10255, 'RIZKI HARI NUGROHO', 'Teknik Komputer dan Jaringan (TKJ) 1', 'MASDA III  TELOK GONG', '083899459597', 'S-0036751313@smkth-jakbar.com', 'Kuliah', '2022'),
(10256, 'ROBBY ANDRIANSYAH', 'Teknik Komputer dan Jaringan (TKJ) 1', 'JL. INDRALOKA I', '081283353670', 'S-0036079200@smkth-jakbar.com', 'Kuliah', '2022'),
(10257, 'TAUFIK LERA', 'Teknik Komputer dan Jaringan (TKJ) 1', 'Komp BNI Blok Q B', '089525591801', 'S-0037313304@smkth-jakbar.com', 'Bekerja', '2022'),
(10258, 'TENGKU ARYA SAPUTRA', 'Teknik Komputer dan Jaringan (TKJ) 1', 'JL. ANGKE INDAH I GG III', '081319865527', 'S-0037250295@smkth-jakbar.com', 'Bekerja', '2022'),
(10259, 'WISNU HANDOKO', 'Teknik Komputer dan Jaringan (TKJ) 1', 'JL. KP. BALI PESING', '089508352369', 'S-0042252768@smkth-jakbar.com', 'Bekerja', '2022'),
(10260, 'A\'ANWAR', 'Teknik Komputer dan Jaringan (TKJ) 2', 'JL. ARWANA', '08998882062', 'S-0031442108@smkth-jakbar.com', 'Bekerja', '2022'),
(10261, 'ABDULLAH PATHUR RACHMAN', 'Teknik Komputer dan Jaringan (TKJ) 2', 'KOMP. POLRI KKA B.10', '085695425621', 'S-0031737302@smkth-jakbar.com', 'Bekerja', '2022'),
(10262, 'ADITYA DHARMA', 'Teknik Komputer dan Jaringan (TKJ) 2', 'TAMAN PERMATA INDAH I BLOK PO N0.7C', '081281465721', 'S-0042999136@smkth-jakbar.com', 'Bekerja', '2022'),
(10263, 'ADITYA SAPUTRA', 'Teknik Komputer dan Jaringan (TKJ) 2', 'JL. LATUMENTEN NO. 22', '085821110253', 'S-0039793143@smkth-jakbar.com', 'Bekerja', '2022'),
(10264, 'Agil Mubaroq', 'Teknik Komputer dan Jaringan (TKJ) 2', 'Jl. Krendang Barat GG I/7', '081389429714', 'S-0025433223@smkth-jakbar.com', 'Bekerja', '2022'),
(10265, 'AHMAD MAULANA', 'Teknik Komputer dan Jaringan (TKJ) 2', 'Kp. Salo', '085155221277', 'S-0033447460@smkth-jakbar.com', 'Bekerja', '2022'),
(10266, 'ANDI KOSASIH', 'Teknik Komputer dan Jaringan (TKJ) 2', 'JL. KAPOK POGLAR', '081319865544', 'S-0031737232@smkth-jakbar.com', 'Bekerja', '2022'),
(10267, 'Andriyansah', 'Teknik Komputer dan Jaringan (TKJ) 2', 'Jl. Setiya Jaya 11', '081319865546', 'S-0041279735@smkth-jakbar.com', 'Kuliah', '2022'),
(10268, 'BIMA BAYU SAMUDRA', 'Teknik Komputer dan Jaringan (TKJ) 2', 'Gintungreja', '088227843183', 'S-0037313305@smkth-jakbar.com', 'Bekerja', '2022'),
(10269, 'EGAN BAGUS REHANDIKA ALDA RAKHANTA', 'Teknik Komputer dan Jaringan (TKJ) 2', 'JL. KARYA BARAT I', '081319865597', 'S-0036079197@smkth-jakbar.com', 'Bekerja', '2022'),
(10270, 'EKA DHANI', 'Teknik Komputer dan Jaringan (TKJ) 2', 'JL JELAMBAR BARAT II', '081319865599', 'S-0046225908@smkth-jakbar.com', 'Bekerja', '2022'),
(10271, 'ENDAH HERNIATI', 'Teknik Komputer dan Jaringan (TKJ) 2', 'JL. Kapuk Muara', '085883336527', 'S-0035379416@smkth-jakbar.com', 'Bekerja', '2022'),
(10272, 'FACHRUL BINTANG IMZAD', 'Teknik Komputer dan Jaringan (TKJ) 2', 'KAV. BNI46 BLOK BB-1 NO.16', '0895300265097', 'S-0041200150@smkth-jakbar.com', 'Bekerja', '2022'),
(10273, 'FAHREZI JANUAR RISKI', 'Teknik Komputer dan Jaringan (TKJ) 2', 'JL. M,ASDA II', '085695147581', 'S-0043944194@smkth-jakbar.com', 'Kuliah', '2022'),
(10274, 'HAFIZ NUR ARIF', 'Teknik Komputer dan Jaringan (TKJ) 2', 'JL. JELAMBAR UTAMA IV RT. 06/08 NO. 41', '085694240267', 'S-0034870693@smkth-jakbar.com', 'Kuliah', '2022'),
(10275, 'Hanan Febri Awanda', 'Teknik Komputer dan Jaringan (TKJ) 2', 'Pesing Poglar', '08816542854', 'S-0041055789@smkth-jakbar.com', 'Bekerja', '2022'),
(10276, 'Ibnu Adam', 'Teknik Komputer dan Jaringan (TKJ) 2', 'Jl. Teluk Gong', '088901764615', 'S-0030390539@smkth-jakbar.com', 'Bekerja', '2022'),
(10277, 'KHAIRAN MAULANA', 'Teknik Komputer dan Jaringan (TKJ) 2', 'Pesing Poglar', '081319865612', 'S-0025337835@smkth-jakbar.com', 'Bekerja', '2022'),
(10278, 'M. RESA FAHLEVIH ADITYA PUTRA', 'Teknik Komputer dan Jaringan (TKJ) 2', 'Kampung Baru', '085714676585', 'S-0034623798@smkth-jakbar.com', 'Bekerja', '2022'),
(10279, 'M.FREDY ARDIANSYAH', 'Teknik Komputer dan Jaringan (TKJ) 2', 'KP.GUSTI', '08551134476', 'S-0044206969@smkth-jakbar.com', 'Bekerja', '2022'),
(10280, 'MAULANA RAFI PRASETYO', 'Teknik Komputer dan Jaringan (TKJ) 2', 'JL. JELAMBAR TIMUR', '087771157503', 'S-0035394466@smkth-jakbar.com', 'Kuliah', '2022'),
(10281, 'Muhamad Ariyanzah', 'Teknik Komputer dan Jaringan (TKJ) 2', 'Kp. Basmol', '081574923379', 'S-0043424016@smkth-jakbar.com', 'Kuliah', '2022'),
(10282, 'MUHAMAD RIDWAN', 'Teknik Komputer dan Jaringan (TKJ) 2', 'KP.KALIMATI', '086926030815', 'S-0041055798@smkth-jakbar.com', 'Wirausaha', '2022'),
(10283, 'MUHAMMAD FAHREZA DZULHIJJAH', 'Teknik Komputer dan Jaringan (TKJ) 2', 'KP GUSTI', '\'081397068654', 'S-0040638065@smkth-jakbar.com', 'Wirausaha', '2022'),
(10284, 'MUHAMMAD FERDIANSYAH', 'Teknik Komputer dan Jaringan (TKJ) 2', 'TAMAN PERMATA INDAH', '\'081321641730', 'S-0043183965@smkth-jakbar.com', 'Bekerja', '2022'),
(10285, 'Muhammad Ilham', 'Teknik Komputer dan Jaringan (TKJ) 2', 'Jl. Kapuk Muara Blok B No. 5', '\'081382442737', 'S-0028201559@smkth-jakbar.com', 'Wirausaha', '2022'),
(10286, 'MUHAMMAD MUKHTI ABIMANYU', 'Teknik Komputer dan Jaringan (TKJ) 2', 'JL. JELAMBAR UTAMA IV', '\'081343995268', 'S-0033479399@smkth-jakbar.com', 'Wirausaha', '2022'),
(10287, 'MUHAMMAD RUHDIN', 'Teknik Komputer dan Jaringan (TKJ) 2', 'JL. MANGGA UBI', '\'081329137422', 'S-0036339067@smkth-jakbar.com', 'Kuliah', '2022'),
(10288, 'MUHAMMAD UBAIDILLAH', 'Teknik Komputer dan Jaringan (TKJ) 2', 'TELUK GONG TIMUR', '\'081369198810', 'S-0033307189@smkth-jakbar.com', 'Wirausaha', '2022'),
(10289, 'RAHMAT HADI WIJAYA', 'Teknik Komputer dan Jaringan (TKJ) 2', 'Jl. Jemb II Gg. Jangkung', '\'081318222318', 'S-0037397149@smkth-jakbar.com', 'Kuliah', '2022'),
(10290, 'RAKA PRABOWO', 'Teknik Komputer dan Jaringan (TKJ) 2', 'Teluk Gong', '\'081399962308', 'S-0035391919@smkth-jakbar.com', 'Kuliah', '2022'),
(10291, 'RAMA HERDIANSYAH', 'Teknik Komputer dan Jaringan (TKJ) 2', 'JL. JELAMBAR UTAMA IV NO.62', '\'081348405533', 'S-0044604556@smkth-jakbar.com', 'Bekerja', '2022'),
(10292, 'Rijik Mulana Yusup', 'Teknik Komputer dan Jaringan (TKJ) 2', 'Jl. Angke Jaya Raya No. 9', '\'081380201343', 'S-0027255585@smkth-jakbar.com', 'Bekerja', '2022'),
(10293, 'RIVAL SAPUTRA', 'Teknik Komputer dan Jaringan (TKJ) 2', 'MUARA KARANG TIMUR', '\'081341811439', 'S-0046544488@smkth-jakbar.com', 'Bekerja', '2022'),
(10294, 'SEFI SEPTIANA', 'Teknik Komputer dan Jaringan (TKJ) 2', 'KAPUK MUARA', '\'081327286195', 'S-0045984218@smkth-jakbar.com', 'Bekerja', '2022'),
(10295, 'Siti Nur Kholipah', 'Teknik Komputer dan Jaringan (TKJ) 2', 'Jl. Al Amanah Raya', '\'081384911949', 'S-0042058313@smkth-jakbar.com', 'Bekerja', '2022'),
(10296, 'TYO SAPUTRA', 'Teknik Komputer dan Jaringan (TKJ) 2', 'JL PESING POGLAR', '\'081395283452', 'S-0035279461@smkth-jakbar.com', 'Bekerja', '2022'),
(10297, 'ADITYA SAPUTRA', 'Teknik Komputer dan Jaringan (TKJ) 3', 'KAPUK MUARA', '\'081375312922', 'S-0048046656@smkth-jakbar.com', 'Bekerja', '2022'),
(10298, 'ADNAN BUKHARI', 'Teknik Komputer dan Jaringan (TKJ) 3', 'JELAMBAR ILIR', '\'081394291703', 'S-0027096560@smkth-jakbar.com', 'Kuliah', '2022'),
(10299, 'AHMAT SOFBRI', 'Teknik Komputer dan Jaringan (TKJ) 3', 'Empang Bahagia', '\'081338851337', 'S-0036019423@smkth-jakbar.com', 'Bekerja', '2022'),
(10300, 'Amaika Rachman', 'Teknik Komputer dan Jaringan (TKJ) 3', 'Kapuk Poglar', '\'081348640120', 'S-0035293885@smkth-jakbar.com', 'Bekerja', '2022'),
(10301, 'ANDREAN SAPUTRA', 'Teknik Komputer dan Jaringan (TKJ) 3', 'JL. RAYA AL AMANAH NO. 92', '\'081312032587', 'S-0023463523@smkth-jakbar.com', 'Bekerja', '2022'),
(10302, 'Apriadi', 'Teknik Komputer dan Jaringan (TKJ) 3', 'Pesing Poglar', '\'081313760838', 'S-0041055933@smkth-jakbar.com', 'Bekerja', '2022'),
(10303, 'Ardi Muayad', 'Teknik Komputer dan Jaringan (TKJ) 3', 'Jl. Kiara IV No.146', '\'081399882851', 'S-0043876519@smkth-jakbar.com', 'Bekerja', '2022'),
(10304, 'ARIF DWI SAPUTRA', 'Teknik Komputer dan Jaringan (TKJ) 3', 'JL KAMPUNG GUSTI', '\'081355626498', 'S-0036854135@smkth-jakbar.com', 'Bekerja', '2022'),
(10305, 'DESTA RAHMA NOVIANI', 'Teknik Komputer dan Jaringan (TKJ) 3', 'JL. PLUIT DALAM', '\'081391545504', 'S-0035432487@smkth-jakbar.com', 'Bekerja', '2022'),
(10306, 'DIKKY PANGESTU', 'Teknik Komputer dan Jaringan (TKJ) 3', 'JL Kampung Janis Pekojan III No 39', '\'081354098359', 'S-0043518492@smkth-jakbar.com', 'Kuliah', '2022');
INSERT INTO `siswa` (`id`, `nama_siswa`, `kompetensi_keahlian`, `alamat`, `tlpn`, `email`, `status`, `tahun_lulus`) VALUES
(10307, 'DODI PRAMUJA', 'Teknik Komputer dan Jaringan (TKJ) 3', 'JL. ANGKE INDAH IV', '\'081378131121', 'S-0016052910@smkth-jakbar.com', 'Bekerja', '2022'),
(10308, 'ELGA BUDI PURNOMO', 'Teknik Komputer dan Jaringan (TKJ) 3', 'KAPUK MUARA', '\'081378337971', 'S-0048814424@smkth-jakbar.com', 'Bekerja', '2022'),
(10309, 'FAUZY GUNAWAN', 'Teknik Komputer dan Jaringan (TKJ) 3', 'JALAN UTAMA SAKTI I', '\'081341490626', 'S-0042355951@smkth-jakbar.com', 'Kuliah', '2022'),
(10310, 'IKLAS GUSTI PANGESTU', 'Teknik Komputer dan Jaringan (TKJ) 3', 'LEMAHDUWUR', '\'081316928957', 'S-0035332587@smkth-jakbar.com', 'Wirausaha', '2022'),
(10311, 'ILHAM RAMADHAN', 'Teknik Komputer dan Jaringan (TKJ) 3', 'PESING KONENG', '\'081349252394', 'S-0042355964@smkth-jakbar.com', 'Wirausaha', '2022'),
(10312, 'MUHAMAD IMAM MAHDI', 'Teknik Komputer dan Jaringan (TKJ) 3', 'UTAMA SAKTI 1', '\'081316184534', 'S-0037391674@smkth-jakbar.com', 'Bekerja', '2022'),
(10313, 'MUHAMMAD ADAM SEPTIAWAN', 'Teknik Komputer dan Jaringan (TKJ) 3', 'Jl. Kp. Janis Rt. 009/09 Kel. PekoJan, Kec. Tambota', '\'081363980234', 'S-0037652771@smkth-jakbar.com', 'Kuliah', '2022'),
(10314, 'MUHAMMAD BINTANG', 'Teknik Komputer dan Jaringan (TKJ) 3', 'JL. KARYA', '\'081337053151', 'S-0036154017@smkth-jakbar.com', 'Bekerja', '2022'),
(10315, 'MUHAMMAD FIKRI GINASTIAR', 'Teknik Komputer dan Jaringan (TKJ) 3', 'JL KAMPUNG GUSTI', '\'081349842585', 'S-0049756604@smkth-jakbar.com', 'Bekerja', '2022'),
(10316, 'MUHAMMAD NUR IKHSAN', 'Teknik Komputer dan Jaringan (TKJ) 3', 'JEMBATAN II BARAT RT :003 RW :10 ANGKE', '\'081370788410', 'S-0042811030@smkth-jakbar.com', 'Bekerja', '2022'),
(10317, 'NIKO SAPUTRA', 'Teknik Komputer dan Jaringan (TKJ) 3', 'JLN. JEMBATAN GAMBANG I NO. 12', '\'081361140426', 'S-0042235464@smkth-jakbar.com', 'Wirausaha', '2022'),
(10318, 'NOVA YULIANTO', 'Teknik Komputer dan Jaringan (TKJ) 3', 'Empang Bahagia', '\'081378292328', 'S-0035311080@smkth-jakbar.com', 'Wirausaha', '2022'),
(10319, 'REGA ALDO NURCAHYONO', 'Teknik Komputer dan Jaringan (TKJ) 3', 'Teluk Gong', '\'081349097572', 'S-0035390030@smkth-jakbar.com', 'Wirausaha', '2022'),
(10320, 'REZZA ADITYA PRATAMA', 'Teknik Komputer dan Jaringan (TKJ) 3', 'KAV BNI 46 BLOK.VV NO1', '\'081365951781', 'S-0044276970@smkth-jakbar.com', 'Bekerja', '2022'),
(10321, 'Rifkyan Syah', 'Teknik Komputer dan Jaringan (TKJ) 3', 'Jl Jelambar Timur', '\'081362532349', 'S-0042078794@smkth-jakbar.com', 'Bekerja', '2022'),
(10322, 'RISKY ALFIAN', 'Teknik Komputer dan Jaringan (TKJ) 3', 'JELAMBAR', '\'081329595619', 'S-0050533732@smkth-jakbar.com', 'Kuliah', '2022'),
(10323, 'SATRIA PAMUNGKAS', 'Teknik Komputer dan Jaringan (TKJ) 3', 'PETERNAKAN 3', '\'081327840462', 'S-0033223715@smkth-jakbar.com', 'Kuliah', '2022'),
(10324, 'Virlya Aulia Rohmah', 'Teknik Komputer dan Jaringan (TKJ) 3', 'Banaran', '\'081389452199', 'S-0036655645@smkth-jakbar.com', 'Kuliah', '2022'),
(10325, 'Wafa Fauzan Jamil', 'Teknik Komputer dan Jaringan (TKJ) 3', 'Jl. Jelambar Utama IV', '\'081394354700', 'S-0037429545@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2022'),
(10326, 'WAHYU', 'Teknik Komputer dan Jaringan (TKJ) 3', 'JL UTAMA SAKTI NO 126F', '\'081315584963', 'S-0034994947@smkth-jakbar.com', 'Wirausaha', '2022'),
(10327, 'WILLIAM WIJAYA PHANG', 'Teknik Komputer dan Jaringan (TKJ) 3', 'JL. TN SEREAL III/31', '\'081370486388', 'S-0043436414@smkth-jakbar.com', 'Wirausaha', '2022'),
(10328, 'WILLY RAFIANSYAH', 'Teknik Komputer dan Jaringan (TKJ) 3', 'JL.INDRALOKA I', '\'081347939093', 'S-0037154559@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2022'),
(10329, 'YANUAR BUDI PRATAMA', 'Teknik Komputer dan Jaringan (TKJ) 3', 'KAPUK RAYA Gg SWADAYA II', '\'081374268963', 'S-0043295500@smkth-jakbar.com', 'Bekerja', '2022'),
(10330, 'YORIKO OKTAVIANUS MAMARODIA', 'Teknik Komputer dan Jaringan (TKJ) 3', 'Komplek POLRI B.12', '\'081398037170', 'S-0035279433@smkth-jakbar.com', 'Wirausaha', '2022'),
(10331, 'ZOKROTUN NIDA', 'Teknik Komputer dan Jaringan (TKJ) 3', 'JL. ANGKE', '\'081317598627', 'S-0037250319@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2022'),
(10332, 'AFIFAH ZAHRA', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'KP. GUSTI', '081319889526', 'S-081319889526@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2021'),
(10333, 'AGUS SAYUTI', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'JL. KAPUK MUARA', '081319889524', 'S-081319889524@smkth-jakbar.com', 'Kuliah', '2021'),
(10334, 'AHMAD ERLANGGA SAHPUTRA', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'Jl. Pekojan III', '081319889523', 'S-081319889523@smkth-jakbar.com', 'Bekerja', '2021'),
(10335, 'ALVIANSYAH BUDI PRATAMA', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'MASDA I TELUK GONG', '081319889522', 'S-081319889522@smkth-jakbar.com', 'Bekerja', '2021'),
(10336, 'ANANDA DESTI MAHARANI', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'JL. ANGKE INDAH', '081319889521', 'S-081319889521@smkth-jakbar.com', 'Kuliah', '2021'),
(10337, 'DELIA AYU FITRIANI', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'JL.UTAMA SAKTI I NO.117', '081319889520', 'S-081319889520@smkth-jakbar.com', 'Bekerja', '2021'),
(10338, 'DEVIANA DAMAYANTI', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'TELUK GONG KAMPUNG GUSTI', '081319889519', 'S-081319889519@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2021'),
(10339, 'DEWI RATNANINGSIH', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'JL KALIANYAR', '081319889518', 'S-081319889518@smkth-jakbar.com', 'Bekerja', '2021'),
(10340, 'DINANTY SANDRA BAHAR', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'KP. Basmol', '081319889517', 'S-081319889517@smkth-jakbar.com', 'Bekerja', '2021'),
(10341, 'EKA HUNAFA', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'Muara Karang Barat', '081319889516', 'S-081319889516@smkth-jakbar.com', 'Bekerja', '2021'),
(10342, 'EPI HERAWATI', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'KEBON PISANG NO.13', '081319889515', 'S-081319889515@smkth-jakbar.com', 'Bekerja', '2021'),
(10343, 'ERIKA MAULITA', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'JL.ANYAR I NO.18', '081319889514', 'S-081319889514@smkth-jakbar.com', 'Kuliah', '2021'),
(10344, 'FITRI ANDRIYANI PUTRI', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'JL.JELAMBAR ILIR', '081319889513', 'S-081319889513@smkth-jakbar.com', 'Bekerja', '2021'),
(10345, 'FRANSISKA DWI YULIA', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'ROSELA I BLOK DD I NO. I', '081319889512', 'S-081319889512@smkth-jakbar.com', 'Bekerja', '2021'),
(10346, 'GHAIB SAMUDRA ALAM SEMESTA', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'JL KB PALA', '081319889510', 'S-081319889510@smkth-jakbar.com', 'Kuliah', '2021'),
(10347, 'IFAN ALI ROMADHON', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'JEMBATAN GAMBANG', '081319889509', 'S-081319889509@smkth-jakbar.com', 'Bekerja', '2021'),
(10348, 'ILHAM MANZIS', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'KP. GUSTI', '081319889507', 'S-081319889507@smkth-jakbar.com', 'Kuliah', '2021'),
(10349, 'LISA DIA DAMAYANTI', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'KAPUK MUARA', '081319889506', 'S-081319889506@smkth-jakbar.com', 'Bekerja', '2021'),
(10350, 'MARISA SONATA', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'TELUK GONG', '081319889505', 'S-081319889505@smkth-jakbar.com', 'Bekerja', '2021'),
(10351, 'MUHAMMAD ALVIAN RIZKY', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'SWADAYA PESING POGLAR', '081319889504', 'S-081319889504@smkth-jakbar.com', 'Bekerja', '2021'),
(10352, 'NADIVA DHEA PUSPITA', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'JL.PETERNAKAN 1 ', '081319889503', 'S-081319889503@smkth-jakbar.com', 'Bekerja', '2021'),
(10353, 'NI\'MATUL AWWALIYA AZZAHRA', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'JL.UTAMA SAKTI I NO.4A', '081319889502', 'S-081319889502@smkth-jakbar.com', 'Bekerja', '2021'),
(10354, 'NURUL ASHITA', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'KAPUK PROYEK', '081319889501', 'S-081319889501@smkth-jakbar.com', 'Kuliah', '2021'),
(10355, 'PUTRI ANGGITA SARI', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'KP. BASMOL', '081319889500', 'S-081319889500@smkth-jakbar.com', 'Bekerja', '2021'),
(10356, 'PUTRI INDAH ROSYANTI', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'Teluk Gong', '081319889499', 'S-081319889499@smkth-jakbar.com', 'Bekerja', '2021'),
(10357, 'RAYHAN FERDIAN', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'KP PESING POGLAR NO 39', '081319889497', 'S-081319889497@smkth-jakbar.com', 'Bekerja', '2021'),
(10358, 'REFI APRIYANI', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'JL.SWADAYA RAYA NO.130', '081319889496', 'S-081319889496@smkth-jakbar.com', 'Bekerja', '2021'),
(10359, 'RISA SETIAWATI', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'Kapuk Muara', '081319889495', 'S-081319889495@smkth-jakbar.com', 'Bekerja', '2021'),
(10360, 'RIZKY SETIAWAN', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'JL.UTAMA SAKTI 6 NO.25', '081319889493', 'S-081319889493@smkth-jakbar.com', 'Kuliah', '2021'),
(10361, 'ROKANA SYIFAIYAH', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'JL. ANYAR IV', '081319889492', 'S-081319889492@smkth-jakbar.com', 'Kuliah', '2021'),
(10362, 'SABRINA PUTRI', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'JL.KAMPUNG GUSTI RT 006/005', '081319889491', 'S-081319889491@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2021'),
(10363, 'SEPINA', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'JL.ANYAR NO.14', '081319889490', 'S-081319889490@smkth-jakbar.com', 'Bekerja', '2021'),
(10364, 'SITI ALAWIYYAH', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'KEBONDANAS', '081319889473', 'S-081319889473@smkth-jakbar.com', 'Bekerja', '2021'),
(10365, 'SITI AMELIA', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'TELUK GONG JL. MOA', '081319889472', 'S-081319889472@smkth-jakbar.com', 'Bekerja', '2021'),
(10366, 'SRI WAHYUNI', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'TELUK GONG JL. LELE GG. D3', '081319889471', 'S-081319889471@smkth-jakbar.com', 'Bekerja', '2021'),
(10367, 'SUKMO BUDIANGGORO', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'Kapuk Muara', '081319889470', 'S-081319889470@smkth-jakbar.com', 'Bekerja', '2021'),
(10368, 'SYAHRUL FATHUR ROYAN', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'JL SINAR BUDI NO. 23', '081319889469', 'S-081319889469@smkth-jakbar.com', 'Bekerja', '2021'),
(10369, 'Syahrul Rafliyansyah', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'Jl. Utama Sakti I No.12A', '081319889468', 'S-081319889468@smkth-jakbar.com', 'Bekerja', '2021'),
(10370, 'TEGAR AFFANDI', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'JL. JELAMBAR ILIR', '081319889467', 'S-081319889467@smkth-jakbar.com', 'Bekerja', '2021'),
(10371, 'WULAN CAHYA NINGRUM', 'Akuntansi Keuangan dan Lembaga (AKL) 1', 'JL KB. PALA', '081319889465', 'S-081319889465@smkth-jakbar.com', 'Bekerja', '2021'),
(10372, 'ADINDA RAMADHONA', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'JL. KP.GUSTI', '081319865164', 'S-081319865164@smkth-jakbar.com', 'Wirausaha', '2021'),
(10373, 'ADINDA RIZKE JULIA', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'JL. ANYAR II NO. 37 A', '081319865158', 'S-081319865158@smkth-jakbar.com', 'Bekerja', '2021'),
(10374, 'AHMAD RIO', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'KAPUK MUARA', '081319865159', 'S-081319865159@smkth-jakbar.com', 'Bekerja', '2021'),
(10375, 'ANISA PUJIASTUTI', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'KP BASMOL', '081319865160', 'S-081319865160@smkth-jakbar.com', 'Bekerja', '2021'),
(10376, 'APRIAL BAHRIANSYAH', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'RUSUN TAMBORA IV BLOK B', '081319865161', 'S-081319865161@smkth-jakbar.com', 'Bekerja', '2021'),
(10377, 'ARSYDIO RIZKY ANDRIATNA', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'JL. SINAR BUDI', '081319865162', 'S-081319865162@smkth-jakbar.com', 'Kuliah', '2021'),
(10378, 'AUDI ALDIANSIH', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'JL.KAVLING POLRI BLOK E/6 NO.1406', '081319865148', 'S-081319865148@smkth-jakbar.com', 'Kuliah', '2021'),
(10379, 'AUDRY SYAHPUTRI', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'JL JELAMBAR SELATAN XVI NO.26', '081319865163', 'S-081319865163@smkth-jakbar.com', 'Bekerja', '2021'),
(10380, 'DAHLIA GITA SAFITRI', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'JL PETERNAKAN I ', '081319865149', 'S-081319865149@smkth-jakbar.com', 'Bekerja', '2021'),
(10381, 'DEVI INDRIYANI', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'JL JEMBATAN ITEM', '081319865150', 'S-081319865150@smkth-jakbar.com', 'Wirausaha', '2021'),
(10382, 'DEVI PURNAMA SARI', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'JL. SINAR BUDI GG. LONTAR', '081319865151', 'S-081319865151@smkth-jakbar.com', 'Bekerja', '2021'),
(10383, 'DITA SEPTIANA', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'JL. PESING KONENG', '081319865154', 'S-081319865154@smkth-jakbar.com', 'Wirausaha', '2021'),
(10384, 'FARADILLAH AYU LARASATI', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'KP. Muk', '081319865155', 'S-081319865155@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2021'),
(10385, 'FEBY NADIA SARI', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'TELUK GONG', '081319865157', 'S-081319865157@smkth-jakbar.com', 'Bekerja', '2021'),
(10386, 'FITRI DEVIANTI', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'JL.KP GUSTI NO.7', '018319865147', 'S-018319865147@smkth-jakbar.com', 'Bekerja', '2021'),
(10387, 'ILHAM NUR DIANSYAH', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'JL. JELAMBAR SELATAN XVI NO.19', '081319865146', 'S-081319865146@smkth-jakbar.com', 'Bekerja', '2021'),
(10388, 'INDAYATI', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'KAPUK MUARA', '081319865145', 'S-081319865145@smkth-jakbar.com', 'Bekerja', '2021'),
(10389, 'INDRA MAULANA', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'JL.KAMPUNG.BARU NO.40', '081319865144', 'S-081319865144@smkth-jakbar.com', 'Bekerja', '2021'),
(10390, 'KHAILA ALIFIA DEWI', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'JL. KP. MUK', '081319865143', 'S-081319865143@smkth-jakbar.com', 'Bekerja', '2021'),
(10391, 'LAELY DWI PATRIA IKKA', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'JL.PESING POGLAR RT 009/002', '081319865141', 'S-081319865141@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2021'),
(10392, 'MUHAMMAD SAIPULLOH', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'KAPUK RAYA', '081319865140', 'S-081319865140@smkth-jakbar.com', 'Bekerja', '2021'),
(10393, 'MUHAMMAD SURYA PADLY', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'KP. GUSTI', '081319865139', 'S-081319865139@smkth-jakbar.com', 'Kuliah', '2021'),
(10394, 'MUJI IRWANTO', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'JL JELAMBAR JAYA IV GG.T NO.8', '081319865138', 'S-081319865138@smkth-jakbar.com', 'Bekerja', '2021'),
(10395, 'NANDA ANDRIANI', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'JEMBATAN III', '081319865137', 'S-081319865137@smkth-jakbar.com', 'Bekerja', '2021'),
(10396, 'NOVI AMELIA PUTRI', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'JL. KAPUK MUARA', '081319889793', 'S-081319889793@smkth-jakbar.com', 'Bekerja', '2021'),
(10397, 'PUTRI YUNIARTI DEWI', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'JL GG SIAGA II', '081319889805', 'S-081319889805@smkth-jakbar.com', 'Kuliah', '2021'),
(10398, 'RICCI IRAWAN', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'JL, MUARA BARU', '081319889804', 'S-081319889804@smkth-jakbar.com', 'Bekerja', '2021'),
(10399, 'RIFANI YUMULTRI', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'TAMAN HARAPAN INDAH', '081319889803', 'S-081319889803@smkth-jakbar.com', 'Bekerja', '2021'),
(10400, 'Rika Wulandari', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'Pesing Poglar', '081319889801', 'S-081319889801@smkth-jakbar.com', 'Kuliah', '2021'),
(10401, 'RIKE NUR SAFITRI', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'JL. PESING POGLAR', '081319889800', 'S-081319889800@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2021'),
(10402, 'RIYANA', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'JL. JEMBATAN II BARAT', '081319889798', 'S-081319889798@smkth-jakbar.com', 'Bekerja', '2021'),
(10403, 'RIZKA AYU NUNGGRAENI', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'JATIROYOM', '081319889799', 'S-081319889799@smkth-jakbar.com', 'Kuliah', '2021'),
(10404, 'SANDY PUTRA SETIAWAN', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'TELUK GONG KB. PISANG', '081319889797', 'S-081319889797@smkth-jakbar.com', 'Kuliah', '2021'),
(10405, 'SEPTIA MAHARANI', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'JL.JELAMBAR UTAMA IV NO.47', '081319889796', 'S-081319889796@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2021'),
(10406, 'SYAIF FIKRI ALFARIZI', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'JL SINAR BUDI GG. SINDI', '081319889795', 'S-081319889795@smkth-jakbar.com', 'Bekerja', '2021'),
(10407, 'SYELVI NURUL AINI', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'JL. TAWANGMANGU', '081319889794', 'S-081319889794@smkth-jakbar.com', 'Kuliah', '2021'),
(10408, 'TRI FAUZI SOEKARNO PUTRA', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'JELAMBAR JAYA IV', '081319889776', 'S-081319889776@smkth-jakbar.com', 'Bekerja', '2021'),
(10409, 'TRIANA', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'KP. BALI GG. MASJID', '081319889792', 'S-081319889792@smkth-jakbar.com', 'Bekerja', '2021'),
(10410, 'TRIANI', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'KP. BALI GG. MASJID', '081319889791', 'S-081319889791@smkth-jakbar.com', 'Bekerja', '2021'),
(10411, 'Wahyu Alamsyah', 'Akuntansi Keuangan dan Lembaga (AKL) 2', 'Jl. Kebon Pala', '081319889790', 'S-081319889790@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2021'),
(10412, 'ADE ARIYANTO', 'Bisnis Daring dan Pemasaran (BDP) 1', 'JL.Mangga Ubi ', '081319889828', 'S-081319889828@smkth-jakbar.com', 'Bekerja', '2021'),
(10413, 'ADITYA GHOFUR ALIM', 'Bisnis Daring dan Pemasaran (BDP) 1', 'JL KAPUK MUARA NO15', '081319889829', 'S-081319889829@smkth-jakbar.com', 'Bekerja', '2021'),
(10414, 'ANNISA ARYANI RAMADHANI', 'Bisnis Daring dan Pemasaran (BDP) 1', 'JL.KAV POLRI BLOK G.2 NO.15', '081319889830', 'S-081319889830@smkth-jakbar.com', 'Bekerja', '2021'),
(10415, 'ARSYA MANDAHURI', 'Bisnis Daring dan Pemasaran (BDP) 1', 'KAPUK MUARA', '081319889831', 'S-081319889831@smkth-jakbar.com', 'Bekerja', '2021'),
(10416, 'BERTHA AMANDA PUTRI', 'Bisnis Daring dan Pemasaran (BDP) 1', 'JL. TANJUNG WANGI', '081319889832', 'S-081319889832@smkth-jakbar.com', 'Bekerja', '2021'),
(10417, 'DEFAL SULYA', 'Bisnis Daring dan Pemasaran (BDP) 1', 'JL. MERPATI IV NO.19', '081319889833', 'S-081319889833@smkth-jakbar.com', 'Bekerja', '2021'),
(10418, 'DELLA FEBRIYANTI', 'Bisnis Daring dan Pemasaran (BDP) 1', 'JL. JELAMBAR UTAMA IV', '081319889834', 'S-081319889834@smkth-jakbar.com', 'Bekerja', '2021'),
(10419, 'FADHLI HAYKAL AZHMI', 'Bisnis Daring dan Pemasaran (BDP) 1', 'JL. KP. POGLAR', '081319889836', 'S-081319889836@smkth-jakbar.com', 'Bekerja', '2021'),
(10420, 'FADLI SETIAWAN RAMADHAN', 'Bisnis Daring dan Pemasaran (BDP) 1', 'PESING POGLAR', '081319889837', 'S-081319889837@smkth-jakbar.com', 'Bekerja', '2021'),
(10421, 'FIKI REZA MAESA PUTRA', 'Bisnis Daring dan Pemasaran (BDP) 1', 'JL. KAPUK MANGGA UBI', '081319889839', 'S-081319889839@smkth-jakbar.com', 'Bekerja', '2021'),
(10422, 'HALIM SYAEPUDIN', 'Bisnis Daring dan Pemasaran (BDP) 1', 'JL.SWADAYA NO.25', '081319889840', 'S-081319889840@smkth-jakbar.com', 'Bekerja', '2021'),
(10423, 'HANIEKA ZAKARIA PUTRI', 'Bisnis Daring dan Pemasaran (BDP) 1', 'JL. PESING KONENG', '081319889841', 'S-081319889841@smkth-jakbar.com', 'Bekerja', '2021'),
(10424, 'ILHAM SAPUTRA', 'Bisnis Daring dan Pemasaran (BDP) 1', 'KEBON PISANG', '081319889842', 'S-081319889842@smkth-jakbar.com', 'Bekerja', '2021'),
(10425, 'Indira Riski', 'Bisnis Daring dan Pemasaran (BDP) 1', 'Kampung Baru', '081319889843', 'S-081319889843@smkth-jakbar.com', 'Bekerja', '2021'),
(10426, 'INTAN PERMATA SARI', 'Bisnis Daring dan Pemasaran (BDP) 1', 'JL. JELAMBAR TIMUR NO.23-C', '081319889844', 'S-081319889844@smkth-jakbar.com', 'Bekerja', '2021'),
(10427, 'LIDIYA URLIA SARI', 'Bisnis Daring dan Pemasaran (BDP) 1', 'KEDUNGSARI RT21 RW4 TEGALSARI TIMUR', '081319889844', 'S-081319889844@smkth-jakbar.com', 'Bekerja', '2021'),
(10428, 'M. ERIK FIDIANTO', 'Bisnis Daring dan Pemasaran (BDP) 1', 'JL.SOSIAL NO.42', '081319889846', 'S-081319889846@smkth-jakbar.com', 'Bekerja', '2021'),
(10429, 'MUHAMAD IRPAN', 'Bisnis Daring dan Pemasaran (BDP) 1', 'JL KAPUK MUARA', '081319889847', 'S-081319889847@smkth-jakbar.com', 'Bekerja', '2021'),
(10430, 'MUHAMAD TAUFIK ILHAM', 'Bisnis Daring dan Pemasaran (BDP) 1', 'JL. JEMBATAN ITEM', '081319889849', 'S-081319889849@smkth-jakbar.com', 'Bekerja', '2021'),
(10431, 'MUHAMAD ZHIDANE PUTRA NIFANO', 'Bisnis Daring dan Pemasaran (BDP) 1', 'JL LATUMETEN III BARAT', '081319889851', 'S-081319889851@smkth-jakbar.com', 'Bekerja', '2021'),
(10432, 'MUHAMMAD RIAN ANDRIANSYAH', 'Bisnis Daring dan Pemasaran (BDP) 1', 'JL. JELAMBAR ILIR', '081319889848', 'S-081319889848@smkth-jakbar.com', 'Bekerja', '2021'),
(10433, 'MUHAMMAD YASIN', 'Bisnis Daring dan Pemasaran (BDP) 1', 'JL.INDRALOKA I NO.69', '081319889850', 'S-081319889850@smkth-jakbar.com', 'Kuliah', '2021'),
(10434, 'NABIB ROHUL AHMADA', 'Bisnis Daring dan Pemasaran (BDP) 1', 'RUSUNAWA TAMBORA I TWR A LT.VI/01', '081319889852', 'S-081319889852@smkth-jakbar.com', 'Bekerja', '2021'),
(10435, 'NABIILAH AUDIANSYAH', 'Bisnis Daring dan Pemasaran (BDP) 1', 'JL.PESING KONENG NO.80', '081319889856', 'S-081319889856@smkth-jakbar.com', 'Bekerja', '2021'),
(10436, 'NADILA LINTANG SARI', 'Bisnis Daring dan Pemasaran (BDP) 1', 'JL KAPUK POGLAR', '081319889857', 'S-081319889857@smkth-jakbar.com', 'Bekerja', '2021'),
(10437, 'NANDA FITRIA', 'Bisnis Daring dan Pemasaran (BDP) 1', 'JL.UTAMA SAKTI 1 NO. 30', '081319889858', 'S-081319889858@smkth-jakbar.com', 'Kuliah', '2021'),
(10438, 'NANDAR ROMADONI', 'Bisnis Daring dan Pemasaran (BDP) 1', 'JELAMBAR TIMUR', '081319889859', 'S-081319889859@smkth-jakbar.com', 'Bekerja', '2021'),
(10439, 'Naswiti', 'Bisnis Daring dan Pemasaran (BDP) 1', 'Kp. Poglar', '081319889861', 'S-081319889861@smkth-jakbar.com', 'Bekerja', '2021'),
(10440, 'PURNAMASARI', 'Bisnis Daring dan Pemasaran (BDP) 1', 'JL.JELAMBAR BARAT II NO.35', '081319889864', 'S-081319889864@smkth-jakbar.com', 'Bekerja', '2021'),
(10441, 'PUTRA MINANDA', 'Bisnis Daring dan Pemasaran (BDP) 1', 'KAPUK POGLAR', '081319889865', 'S-081319889865@smkth-jakbar.com', 'Bekerja', '2021'),
(10442, 'RAFI CHESTA ADABI', 'Bisnis Daring dan Pemasaran (BDP) 1', 'JL. KAPUK MUARA', '081319889866', 'S-081319889866@smkth-jakbar.com', 'Bekerja', '2021'),
(10443, 'REGITA OLIA ANGGRAYANI', 'Bisnis Daring dan Pemasaran (BDP) 1', 'JL. ANGKE INDAH RAYA NO. 277', '081319889867', 'S-081319889867@smkth-jakbar.com', 'Bekerja', '2021'),
(10444, 'RICKY NUGROHO', 'Bisnis Daring dan Pemasaran (BDP) 1', 'JL. KAPUK MANGGA UBI GG.SEMPIT', '081319889868', 'S-081319889868@smkth-jakbar.com', 'Bekerja', '2021'),
(10445, 'RIFQI RAMADHAN', 'Bisnis Daring dan Pemasaran (BDP) 1', 'JL. SOSIAL GG. BIDARA NO.55', '081319889869', 'S-081319889869@smkth-jakbar.com', 'Wirausaha', '2021'),
(10446, 'RIJAL', 'Bisnis Daring dan Pemasaran (BDP) 1', 'JL KP. GUSTI PINTU AIR', '081319889870', 'S-081319889870@smkth-jakbar.com', 'Kuliah', '2021'),
(10447, 'RIZAL PRATAMA PUTRA', 'Bisnis Daring dan Pemasaran (BDP) 1', 'TULIP', '081319889871', 'S-081319889871@smkth-jakbar.com', 'Bekerja', '2021'),
(10448, 'RIZKY JULIANTO', 'Bisnis Daring dan Pemasaran (BDP) 1', 'KAMPUNG GUSTI', '081319889873', 'S-081319889873@smkth-jakbar.com', 'Bekerja', '2021'),
(10449, 'WAHYU', 'Bisnis Daring dan Pemasaran (BDP) 1', 'RUSUNAWA PESAKIH BLOK F. NO. 202', '081319889874', 'S-081319889874@smkth-jakbar.com', 'Kuliah', '2021'),
(10450, 'ACHMAD KHOZIN', 'Bisnis Daring dan Pemasaran (BDP) 2', 'JL. TELUK GONG', '081319889435', 'S-081319889435@smkth-jakbar.com', 'Bekerja', '2021'),
(10451, 'AMILDA NOPASARI', 'Bisnis Daring dan Pemasaran (BDP) 2', 'TANAH PASIR', '081319889475', 'S-081319889475@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2021'),
(10452, 'ANDRI ARDIANSYAH', 'Bisnis Daring dan Pemasaran (BDP) 2', 'JL. KP. KALIMATI', '081319889476', 'S-081319889476@smkth-jakbar.com', 'Kuliah', '2021'),
(10453, 'ANDRI PURNIAWAN', 'Bisnis Daring dan Pemasaran (BDP) 2', 'JL. MANGGA UBI', '081319889477', 'S-081319889477@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2021'),
(10454, 'ANNISA FAJRI YANTI', 'Bisnis Daring dan Pemasaran (BDP) 2', 'Kapuk Mangga Ubi', '081319889479', 'S-081319889479@smkth-jakbar.com', 'Bekerja', '2021'),
(10455, 'BAGAS DWIYANTO', 'Bisnis Daring dan Pemasaran (BDP) 2', 'KP. KALI MATI', '081319889480', 'S-081319889480@smkth-jakbar.com', 'Bekerja', '2021'),
(10456, 'BARRIANSYAH RAMADHAN', 'Bisnis Daring dan Pemasaran (BDP) 2', 'JL. JELAMBAR UTAMA VII/15', '081319889481', 'S-081319889481@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2021'),
(10457, 'DAFFA MUHAMMAD SYARIP', 'Bisnis Daring dan Pemasaran (BDP) 2', 'KP. BALI GG. MESJID', '081319889483', 'S-081319889483@smkth-jakbar.com', 'Wirausaha', '2021'),
(10458, 'DHEAJENG NOOR AZIZAH', 'Bisnis Daring dan Pemasaran (BDP) 2', 'KAPUK MUARA NO.13', '081319889486', 'S-081319889486@smkth-jakbar.com', 'Kuliah', '2021'),
(10459, 'DIAN LESTARI', 'Bisnis Daring dan Pemasaran (BDP) 2', 'KP.BARU NO. 2', '081319889487', 'S-081319889487@smkth-jakbar.com', 'Bekerja', '2021'),
(10460, 'EKA SEFTIAN', 'Bisnis Daring dan Pemasaran (BDP) 2', 'JL.KP BALI PESING NO.27', '081319889453', 'S-081319889453@smkth-jakbar.com', 'Bekerja', '2021'),
(10461, 'ENES ROSIANA', 'Bisnis Daring dan Pemasaran (BDP) 2', 'JL KB. PISANG', '081319889452', 'S-081319889452@smkth-jakbar.com', 'Bekerja', '2021'),
(10462, 'FAUZAN HUDAYATULLAH', 'Bisnis Daring dan Pemasaran (BDP) 2', 'JL.LATUMENTEN III BARAT NO.13', '081319889451', 'S-081319889451@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2021'),
(10463, 'FAUZIA SALMA HANIFAH', 'Bisnis Daring dan Pemasaran (BDP) 2', 'JL. JELAMBAR JAYA III GG.19', '081319889450', 'S-081319889450@smkth-jakbar.com', 'Bekerja', '2021'),
(10464, 'HEGI YULIO', 'Bisnis Daring dan Pemasaran (BDP) 2', 'JL. JELAMBAR JAYA IV GG.T NO.5', '081319889449', 'S-081319889449@smkth-jakbar.com', 'Kuliah', '2021'),
(10465, 'IRENE NOPTIA ANINDITA', 'Bisnis Daring dan Pemasaran (BDP) 2', 'Empang Damai', '081319889448', 'S-081319889448@smkth-jakbar.com', 'Bekerja', '2021'),
(10466, 'IVONNE LISDIANA', 'Bisnis Daring dan Pemasaran (BDP) 2', 'JL. JELAMBAR UTAMA RAYA/9', '081319889447', 'S-081319889447@smkth-jakbar.com', 'Bekerja', '2021'),
(10467, 'KENDI PRIATNO', 'Bisnis Daring dan Pemasaran (BDP) 2', 'TELUK GONG', '081319889446', 'S-081319889446@smkth-jakbar.com', 'Bekerja', '2021'),
(10468, 'MELVIS PERMANA', 'Bisnis Daring dan Pemasaran (BDP) 2', 'JL. KAPUK POGLAR', '081319889445', 'S-081319889445@smkth-jakbar.com', 'Kuliah', '2021'),
(10469, 'MOH. NOVAL SAIPULLOH', 'Bisnis Daring dan Pemasaran (BDP) 2', 'WIJAYAKUSUMA', '081319889474', 'S-081319889474@smkth-jakbar.com', 'Kuliah', '2021'),
(10470, 'MOHAMMAD SODIK', 'Bisnis Daring dan Pemasaran (BDP) 2', 'JL PEKOJAN III KP JANIS', '081319889488', 'S-081319889488@smkth-jakbar.com', 'Bekerja', '2021'),
(10471, 'MOHAMMAD VIQY ADRIAN', 'Bisnis Daring dan Pemasaran (BDP) 2', 'KAMPUNG GUSTI', '081319889489', 'S-081319889489@smkth-jakbar.com', 'Bekerja', '2021'),
(10472, 'MUHAMAT SATRIO CAHYADI', 'Bisnis Daring dan Pemasaran (BDP) 2', 'Kapuk Muara', '081319889464', 'S-081319889464@smkth-jakbar.com', 'Bekerja', '2021'),
(10473, 'MUHAMMAD ERLANGGA', 'Bisnis Daring dan Pemasaran (BDP) 2', 'JL. ANYAR IV', '081319889463', 'S-081319889463@smkth-jakbar.com', 'Kuliah', '2021'),
(10474, 'Muhammad Iqbal Maulana', 'Bisnis Daring dan Pemasaran (BDP) 2', 'Kp.Gusti Gg.Kantong', '081319889462', 'S-081319889462@smkth-jakbar.com', 'Bekerja', '2021'),
(10475, 'NURHALIM', 'Bisnis Daring dan Pemasaran (BDP) 2', 'JLN. 20 TELUK GONG', '081319889461', 'S-081319889461@smkth-jakbar.com', 'Bekerja', '2021'),
(10476, 'PREMADI PRATAMA', 'Bisnis Daring dan Pemasaran (BDP) 2', 'HEMAT RAYA NO. 8A', '081319889459', 'S-081319889459@smkth-jakbar.com', 'Kuliah', '2021'),
(10477, 'PURWA AJI SEPTIANA', 'Bisnis Daring dan Pemasaran (BDP) 2', 'JL. JELAMBAR UTAMA IV/55', '081319889458', 'S-081319889458@smkth-jakbar.com', 'Bekerja', '2021'),
(10478, 'RAFLI ANANDA ANDY RIVAI', 'Bisnis Daring dan Pemasaran (BDP) 2', 'JL MUARA KARANG TIMUR', '081319889457', 'S-081319889457@smkth-jakbar.com', 'Bekerja', '2021'),
(10479, 'RAHMANIA ISNAINI', 'Bisnis Daring dan Pemasaran (BDP) 2', 'KOMP. BNI 46 BLOK TT NO.2', '081319889455', 'S-081319889455@smkth-jakbar.com', 'Bekerja', '2021'),
(10480, 'RIO BAGASKARA', 'Bisnis Daring dan Pemasaran (BDP) 2', 'KP KALIMATI NO 15 C', '081319889443', 'S-081319889443@smkth-jakbar.com', 'Bekerja', '2021'),
(10481, 'SEPTISANI MARYANI', 'Bisnis Daring dan Pemasaran (BDP) 2', 'KP.BANJIR KANAL', '081319889442', 'S-081319889442@smkth-jakbar.com', 'Bekerja', '2021'),
(10482, 'SIGIT ARYANTO', 'Bisnis Daring dan Pemasaran (BDP) 2', 'JL.KAPUK POGLAR', '081319889441', 'S-081319889441@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2021'),
(10483, 'SITI MAISAROH', 'Bisnis Daring dan Pemasaran (BDP) 2', 'Kp. Pabrik', '081319889438', 'S-081319889438@smkth-jakbar.com', 'Bekerja', '2021'),
(10484, 'Umiyati', 'Bisnis Daring dan Pemasaran (BDP) 2', 'JL. JELAMBAR TIMUR NO. 59', '081319889454', 'S-081319889454@smkth-jakbar.com', 'Wirausaha', '2021'),
(10485, 'VIVIE NOVIYANA PUTRI', 'Bisnis Daring dan Pemasaran (BDP) 2', 'JELAMBAR KB. PISANG', '081319889436', 'S-081319889436@smkth-jakbar.com', 'Kuliah', '2021'),
(10486, 'WAHYU SETIABUDI', 'Bisnis Daring dan Pemasaran (BDP) 2', 'JL. LATUMETEN IV GG-3 NO. 4', '081319889437', 'S-081319889437@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2021'),
(10487, 'AMELIA ROHAENI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'Kapuk Muara No.38', '081319865101', 'S-081319865101@smkth-jakbar.com', 'Wirausaha', '2021'),
(10488, 'ANGGI SURYANI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'Teluk Gong', '081319865104', 'S-081319865104@smkth-jakbar.com', 'Wirausaha', '2021'),
(10489, 'Annisa Oktaviani', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'JL. KAMPUNG SALO RT.005/07 NO.90', '081319865105', 'S-081319865105@smkth-jakbar.com', 'Bekerja', '2021'),
(10490, 'ARTIKA DIVA TIANA', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'KEBON PISANG', '081319865106', 'S-081319865106@smkth-jakbar.com', 'Bekerja', '2021'),
(10491, 'AULIA PUTRI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'Kapuk Mas', '081319865107', 'S-081319865107@smkth-jakbar.com', 'Bekerja', '2021'),
(10492, 'BELLA NURFARIDA', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'Kampung Gusti', '081319865108', 'S-081319865108@smkth-jakbar.com', 'Wirausaha', '2021'),
(10493, 'CRISTINA', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'JL.PEKOJAN', '081319865112', 'S-081319865112@smkth-jakbar.com', 'Bekerja', '2021'),
(10494, 'DAMAYANTI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'PESING POGLAR', '081319865114', 'S-081319865114@smkth-jakbar.com', 'Bekerja', '2021'),
(10495, 'DELLA AMANDA FITRIANI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'JL. SUKAJAYA II/18', '081319865115', 'S-081319865115@smkth-jakbar.com', 'Kuliah', '2021'),
(10496, 'DELLARAS PUTRI HERMAWATI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'JL. MUARA BARU', '081319865117', 'S-081319865117@smkth-jakbar.com', 'Bekerja', '2021'),
(10497, 'DESVITA AULIA WULAN', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'KAPUK MUARA GG. 45', '081319865118', 'S-081319865118@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2021'),
(10498, 'DHEA PARAMITA SUHANDI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'KAPUK POGLAR', '081319865119', 'S-081319865119@smkth-jakbar.com', 'Kuliah', '2021'),
(10499, 'DIAN PUSPITA SARI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'JL JELAMBAR TIMUR NO.45', '081319865120', 'S-081319865120@smkth-jakbar.com', 'Bekerja', '2021'),
(10500, 'DINA FATHIMATUZ ZAHRO', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'Jl. Kapuk Sawah', '081319865121', 'S-081319865121@smkth-jakbar.com', 'Kuliah', '2021'),
(10501, 'DWI YUNIARTI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'JL. PETERNAKAN 3', '081319865122', 'S-081319865122@smkth-jakbar.com', 'Kuliah', '2021'),
(10502, 'EKA JULIANTI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'KAPUK PROYEK', '081319865123', 'S-081319865123@smkth-jakbar.com', 'Bekerja', '2021'),
(10503, 'ERFINA FIRDANI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'JL. JELAMBAR UTAMA VIII NO.24', '081319865124', 'S-081319865124@smkth-jakbar.com', 'Bekerja', '2021'),
(10504, 'ERIN WERDIANINGSIH', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'UTAMA SAKTI I', '081319865125', 'S-081319865125@smkth-jakbar.com', 'Bekerja', '2021'),
(10505, 'FITRI PURNAMASARI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'JL PESING POGLAR', '081319865128', 'S-081319865128@smkth-jakbar.com', 'Bekerja', '2021'),
(10506, 'GANIS RISKA SUKESIH', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'JL. INDRALOKA I GG.3 NO.59', '081319865129', 'S-081319865129@smkth-jakbar.com', 'Bekerja', '2021'),
(10507, 'Helen Estepani', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'JL. TAMAN KOTA', '081319865130', 'S-081319865130@smkth-jakbar.com', 'Bekerja', '2021'),
(10508, 'INDAH OCTAVIANI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'JL JEMBATAN ITEM', '081319865131', 'S-081319865131@smkth-jakbar.com', 'Bekerja', '2021'),
(10509, 'INTAN MUHARROMAH', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'JL KAPUK MUARA NO.1', '081319865132', 'S-081319865132@smkth-jakbar.com', 'Bekerja', '2021'),
(10510, 'Juhri Permata Septiani', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'KP SAWAH WITANA RT 02 RW 07 NO 41 KEMBANGAN JAKART', '081319865134', 'S-081319865134@smkth-jakbar.com', 'Bekerja', '2021'),
(10511, 'LUSI FEBRIANI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'KEBON PISANG NO. 16B', '081319865135', 'S-081319865135@smkth-jakbar.com', 'Bekerja', '2021'),
(10512, 'MELINDA NOVITASARI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'JL. KAPUK POGLAR', '081319865099', 'S-081319865099@smkth-jakbar.com', 'Bekerja', '2021'),
(10513, 'MELLYANTI KIRANI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'JL. KAPUK UTARA', '081319855904', 'S-081319855904@smkth-jakbar.com', 'Bekerja', '2021'),
(10514, 'NABILA SHOBRIYAH', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'JL KAPUK POGLAR', '081319855905', 'S-081319855905@smkth-jakbar.com', 'Bekerja', '2021'),
(10515, 'NAILAH WAFA KAMILAH', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'Jl. Jemb. Item', '081319856314', 'S-081319856314@smkth-jakbar.com', 'Bekerja', '2021'),
(10516, 'NIKEN AYU LESTARI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'JL KP. GUSTI', '081319856315', 'S-081319856315@smkth-jakbar.com', 'Bekerja', '2021'),
(10517, 'NURAFNI SETIAWANTI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'JL. KAPUK MUARA', '081319856316', 'S-081319856316@smkth-jakbar.com', 'Kuliah', '2021'),
(10518, 'NURISKA PUJAYANTI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'JL. KAPUK POGLAR', '081319856317', 'S-081319856317@smkth-jakbar.com', 'Bekerja', '2021'),
(10519, 'NURUL MAI SAROH', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'JL PESING POGLAR', '081319856318', 'S-081319856318@smkth-jakbar.com', 'Wirausaha', '2021'),
(10520, 'PUTRI RAHMADANI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'JL KAPUK POGLAR', '081319856319', 'S-081319856319@smkth-jakbar.com', 'Bekerja', '2021'),
(10521, 'Putri Salsabila', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'JL. KRENDANG TENGAH I', '081319856332', 'S-081319856332@smkth-jakbar.com', 'Kuliah', '2021'),
(10522, 'RAHMAWATI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'JL. KP. KEDAUNG', '081319856334', 'S-081319856334@smkth-jakbar.com', 'Kuliah', '2021'),
(10523, 'RANI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'JL.SETIA JAYA VII', '081319856335', 'S-081319856335@smkth-jakbar.com', 'Bekerja', '2021'),
(10524, 'RIFDA SALSABIL', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'PESING POGLAR', '081319856336', 'S-081319856336@smkth-jakbar.com', 'Bekerja', '2021'),
(10525, 'SELVI DIANA', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'JL.UTAMA SAKTI I NO.18', '081319856337', 'S-081319856337@smkth-jakbar.com', 'Bekerja', '2021'),
(10526, 'SYAHARANI BAHRI PUTRI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'JELAMBAR FAJAR KEBON PALA', '081319856338', 'S-081319856338@smkth-jakbar.com', 'Bekerja', '2021'),
(10527, 'TIA PERTIWI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'KAPUK RAYA JL. SWADAYA 4', '081319856426', 'S-081319856426@smkth-jakbar.com', 'Bekerja', '2021'),
(10528, 'WIDI ASTUTIK', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 1', 'Jl. KP. Bali Pesing', '081319889440', 'S-081319889440@smkth-jakbar.com', 'Bekerja', '2021'),
(10529, 'AMANDA RERE BACHTIAR', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'Jl. Kp. Janis', '081319865479', 'S-081319865479@smkth-jakbar.com', 'Bekerja', '2021'),
(10530, 'AYU NING TYAS PUTRI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'JL. KAPUK RAYA NO.224 M', '081319865480', 'S-081319865480@smkth-jakbar.com', 'Bekerja', '2021'),
(10531, 'EKA ROSANTI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'Jl. Sawah Lio Gg.12 no.7', '081319865482', 'S-081319865482@smkth-jakbar.com', 'Bekerja', '2021'),
(10532, 'EVA HERAWATI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'JL. SWADAYA DALAM', '081319865483', 'S-081319865483@smkth-jakbar.com', 'Bekerja', '2021'),
(10533, 'FEBIE PEBRIYANI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'KAMPUNG GUSTI', '081319865498', 'S-081319865498@smkth-jakbar.com', 'Bekerja', '2021'),
(10534, 'HABIBAH FITRIANI TOSI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'Pedongkelan', '081319865486', 'S-081319865486@smkth-jakbar.com', 'Bekerja', '2021'),
(10535, 'Ira Syahrin', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'Duta Harapan Indah No.7', '081319865488', 'S-081319865488@smkth-jakbar.com', 'Bekerja', '2021'),
(10536, 'KHOIRUN NISA', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'JLN SAWAH LIO IV', '081319865490', 'S-081319865490@smkth-jakbar.com', 'Bekerja', '2021'),
(10537, 'MARINDA SALSA BILA', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'JL JELAMBAR BARAT II NO 79 B', '081319865491', 'S-081319865491@smkth-jakbar.com', 'Bekerja', '2021'),
(10538, 'MAYA DAMAYANTI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'KAMPUNG BALI', '081319865492', 'S-081319865492@smkth-jakbar.com', 'Bekerja', '2021'),
(10539, 'NADYA RAHMA', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'KEBON SAYUR KAMPUNG GUSTI', '081319865494', 'S-081319865494@smkth-jakbar.com', 'Bekerja', '2021'),
(10540, 'Niken Sriyuliana', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'KP. KALIMATI RT.007/03, KEDAUNG KALIANGKE, CENGKARENG', '081319865495', 'S-081319865495@smkth-jakbar.com', 'Bekerja', '2021'),
(10541, 'Nofitasari Asmiyati', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'Jl. Anyar IV', '081319865497', 'S-081319865497@smkth-jakbar.com', 'Bekerja', '2021'),
(10542, 'PUTRI SEKAR HESTI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'JL.JEMBATAN ITEM PEKOJAN III', '081319865499', 'S-081319865499@smkth-jakbar.com', 'Bekerja', '2021'),
(10543, 'PUTRI WINDASARI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'JELAMBAR FAJAR', '081319865500', 'S-081319865500@smkth-jakbar.com', 'Bekerja', '2021'),
(10544, 'RAHMA AINI SHOLEHAH', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'KP BARU', '081319865502', 'S-081319865502@smkth-jakbar.com', 'Bekerja', '2021'),
(10545, 'RAHMA NOVIA PUTRI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'Jl. Rawa Bebek', '081319865503', 'S-081319865503@smkth-jakbar.com', 'Bekerja', '2021'),
(10546, 'RIA ANGGRAENI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'SWADAYA NO. 57', '081319865504', 'S-081319865504@smkth-jakbar.com', 'Bekerja', '2021'),
(10547, 'RINI RAHMAWATI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'JL. JELAMBAR SELATAN XVI NO.38', '081319865505', 'S-081319865505@smkth-jakbar.com', 'Bekerja', '2021'),
(10548, 'Sabina Aulia Putri', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'JL. KEDOYA RAYA NO. 05', '081319865506', 'S-081319865506@smkth-jakbar.com', 'Bekerja', '2021'),
(10549, 'SABRINA MAULIDA KUSUMA', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'JL. KP PESING POGLAR', '081319865507', 'S-081319865507@smkth-jakbar.com', 'Bekerja', '2021'),
(10550, 'SAFAATUL MUSLIMAH', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'JL.JELAMBAR IV NO.34', '081319889806', 'S-081319889806@smkth-jakbar.com', 'Bekerja', '2021'),
(10551, 'SAFIRA PUTRI NABILLA PRAYUGA', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'JL.JELAMBAR SELATAN VII NO.44-B', '081319889807', 'S-081319889807@smkth-jakbar.com', 'Kuliah', '2021'),
(10552, 'SALSABILA ISNAINI PUTRI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'PESING POGLAR', '081319889809', 'S-081319889809@smkth-jakbar.com', 'Bekerja', '2021'),
(10553, 'SALSABILLA ANNISA', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'JL JEMBATAN ITEM', '081319889808', 'S-081319889808@smkth-jakbar.com', 'Kuliah', '2021'),
(10554, 'SAPNAH FITRIYANI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'Kampung Gusti', '081319889811', 'S-081319889811@smkth-jakbar.com', 'Bekerja', '2021'),
(10555, 'SELMA PUTRI SARI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'Kapuk Muara', '081319889812', 'S-081319889812@smkth-jakbar.com', 'Bekerja', '2021'),
(10556, 'SELVI UBEDILAH', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'JL UTAMA SAKTI I NO.20 B', '081319889813', 'S-081319889813@smkth-jakbar.com', 'Kuliah', '2021'),
(10557, 'SEPTI WIDIASTUTI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'JL. PESING POGLAR', '081319889814', 'S-081319889814@smkth-jakbar.com', 'Bekerja', '2021'),
(10558, 'SHILFIA NUR FEBRIYANI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'JL. UTAMA SAKTI I NO.49', '081319889815', 'S-081319889815@smkth-jakbar.com', 'Bekerja', '2021'),
(10559, 'SITI DEWI SAPITRI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'UTAMA SAKTI I NO. 19', '081319889816', 'S-081319889816@smkth-jakbar.com', 'Bekerja', '2021'),
(10560, 'TARISA CASWINDI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'TAMBORA III GANG 4', '081319889817', 'S-081319889817@smkth-jakbar.com', 'Bekerja', '2021'),
(10561, 'VERONICA MURDIANTI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'JL KP GUSTI KB.PALA NO.37', '081319889818', 'S-081319889818@smkth-jakbar.com', 'Bekerja', '2021'),
(10562, 'VINA NUR AISYAH', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'JL. JELAMBAR TIMUR', '081319889819', 'S-081319889819@smkth-jakbar.com', 'Bekerja', '2021'),
(10563, 'WAHYUNI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'Teluk Gong jl. B', '081319889820', 'S-081319889820@smkth-jakbar.com', 'Bekerja', '2021'),
(10564, 'WANDA EKA PRADEVI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'Jl. Mangga Ubi', '081319889821', 'S-081319889821@smkth-jakbar.com', 'Kuliah', '2021'),
(10565, 'Widya Hertiningsih', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'Kp. Gusti', '081319889823', 'S-081319889823@smkth-jakbar.com', 'Wirausaha', '2021'),
(10566, 'WINDI SAKIRA', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'TELUK GONG', '081319889825', 'S-081319889825@smkth-jakbar.com', 'Wirausaha', '2021'),
(10567, 'WINDY OKTAPIA', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'JL. KAPUK POGLAR', '081319889824', 'S-081319889824@smkth-jakbar.com', 'Bekerja', '2021'),
(10568, 'YASINTA IKA PRAMESTI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'JL. JELAMBAR UTARA (B)', '081319889826', 'S-081319889826@smkth-jakbar.com', 'Bekerja', '2021'),
(10569, 'YOYOH SURYANTI', 'Otomatisasi dan Tata Kelola Perkantoran (OTKP) 2', 'JL. KP.GUSTI PINTU AIR', '081319889827', 'S-081319889827@smkth-jakbar.com', 'Wirausaha', '2021'),
(10570, 'ABDUL ROIS DZULQARNAIN', 'Teknik Komputer dan Jaringan (TKJ) 1', 'JL.PESING KONENG', '081319889683', 'S-081319889683@smkth-jakbar.com', 'Bekerja', '2021'),
(10571, 'ADITIYA SURYA PRAYOGA', 'Teknik Komputer dan Jaringan (TKJ) 1', 'JL.SOSIAL NO.35', '081319889697', 'S-081319889697@smkth-jakbar.com', 'Bekerja', '2021'),
(10572, 'ADITYA FERDINAND', 'Teknik Komputer dan Jaringan (TKJ) 1', 'JL. PESING  POGLAR', '081319889684', 'S-081319889684@smkth-jakbar.com', 'Bekerja', '2021'),
(10573, 'ADRIAN GUNAWAN', 'Teknik Komputer dan Jaringan (TKJ) 1', 'Jalan Bandengan Utara No.80', '081319889688', 'S-081319889688@smkth-jakbar.com', 'Bekerja', '2021'),
(10574, 'ADYTYA MAULANA YUSUF', 'Teknik Komputer dan Jaringan (TKJ) 1', 'JL JELAMBAR UTAMA IV', '081319889689', 'S-081319889689@smkth-jakbar.com', 'Bekerja', '2021'),
(10575, 'AHMAD ARDIKA', 'Teknik Komputer dan Jaringan (TKJ) 1', 'JL.KAMPUNG GUSTI KB.PALA', '081319889691', 'S-081319889691@smkth-jakbar.com', 'Bekerja', '2021'),
(10576, 'BIMA BUDIMULIA', 'Teknik Komputer dan Jaringan (TKJ) 1', 'Jl. GG. Siaga II', '081319889692', 'S-081319889692@smkth-jakbar.com', 'Bekerja', '2021'),
(10577, 'DESI KHOMISATUL FITRI', 'Teknik Komputer dan Jaringan (TKJ) 1', 'JL.KAMPUNG GUSTI RT 009/015', '081319889693', 'S-081319889693@smkth-jakbar.com', 'Kuliah', '2021'),
(10578, 'DHARMA GUNAWAN', 'Teknik Komputer dan Jaringan (TKJ) 1', 'JL.JELAMBAR SETIA WARGA 8 NO.62', '081319889694', 'S-081319889694@smkth-jakbar.com', 'Kuliah', '2021'),
(10579, 'ELY FAUZIAH', 'Teknik Komputer dan Jaringan (TKJ) 1', 'JL. KAPUK POGLAR', '081319889695', 'S-081319889695@smkth-jakbar.com', 'Bekerja', '2021'),
(10580, 'FAQIH BAIHAKI', 'Teknik Komputer dan Jaringan (TKJ) 1', 'WANAHERANG', '081319889697', 'S-081319889697@smkth-jakbar.com', 'Bekerja', '2021'),
(10581, 'FEBRIANTO AJI ANDIKA', 'Teknik Komputer dan Jaringan (TKJ) 1', 'JL.PTB ANGKE NO.4', '081319889700', 'S-081319889700@smkth-jakbar.com', 'Kuliah', '2021'),
(10582, 'FIQRY FERDINAN NURHIDAYAT', 'Teknik Komputer dan Jaringan (TKJ) 1', 'JL.MERPATI I NO.69', '081319889702', 'S-081319889702@smkth-jakbar.com', 'Bekerja', '2021'),
(10583, 'GANANG DWI SAJIWO', 'Teknik Komputer dan Jaringan (TKJ) 1', 'TELUK GONG', '081319889704', 'S-081319889704@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2021'),
(10584, 'GARY GARCIA', 'Teknik Komputer dan Jaringan (TKJ) 1', 'JL. PESING POGLAR', '081319889705', 'S-081319889705@smkth-jakbar.com', 'Bekerja', '2021'),
(10585, 'GAVIN SEAN SULIVAN', 'Teknik Komputer dan Jaringan (TKJ) 1', 'JL. KARYA BARAT I NO.22', '081319889706', 'S-081319889706@smkth-jakbar.com', 'Kuliah', '2021'),
(10586, 'Ghalih Perwira Hutama', 'Teknik Komputer dan Jaringan (TKJ) 1', 'Jl. Jelambar Utama III', '081319889707', 'S-081319889707@smkth-jakbar.com', 'Wirausaha', '2021'),
(10587, 'GILANG FAJAR RAMADHAN', 'Teknik Komputer dan Jaringan (TKJ) 1', 'KAPUK MUARA', '081319889708', 'S-081319889708@smkth-jakbar.com', 'Bekerja', '2021'),
(10588, 'MALVINO FAIZ RADITYA', 'Teknik Komputer dan Jaringan (TKJ) 1', 'KEBON PALA', '081319889709', 'S-081319889709@smkth-jakbar.com', 'Wirausaha', '2021'),
(10589, 'MOCHAMAD BIMA', 'Teknik Komputer dan Jaringan (TKJ) 1', 'KP. GUSTI', '081319889682', 'S-081319889682@smkth-jakbar.com', 'Kuliah', '2021'),
(10590, 'Muhamad Arip', 'Teknik Komputer dan Jaringan (TKJ) 1', 'Jalan Angke Jaya I', '081319889711', 'S-081319889711@smkth-jakbar.com', 'Bekerja', '2021'),
(10591, 'MUHAMAD FARID', 'Teknik Komputer dan Jaringan (TKJ) 1', 'JL.JELAMBAR BARAT III NO.45/82', '081319889720', 'S-081319889720@smkth-jakbar.com', 'Kuliah', '2021'),
(10592, 'MUHAMMAD ELZA SYAH FAHLEVY', 'Teknik Komputer dan Jaringan (TKJ) 1', 'JL. KAPUK MUARA NO. 27', '081319889718', 'S-081319889718@smkth-jakbar.com', 'Bekerja', '2021'),
(10593, 'MUHAMMAD FACHRUL ZEIN', 'Teknik Komputer dan Jaringan (TKJ) 1', 'KARYA BARAT I', '081319889719', 'S-081319889719@smkth-jakbar.com', 'Bekerja', '2021'),
(10594, 'MUHAMMAD FATIH BUDIONO', 'Teknik Komputer dan Jaringan (TKJ) 1', 'JL KAMPUNG GUSTI GG. KANTONG', '081319889721', 'S-081319889721@smkth-jakbar.com', 'Wirausaha', '2021'),
(10595, 'MUHAMMAD FIKRI HADI PERMANA', 'Teknik Komputer dan Jaringan (TKJ) 1', 'Jl. Jemb Dua Gg Pada Mulya', '081319889723', 'S-081319889723@smkth-jakbar.com', 'Bekerja', '2021'),
(10596, 'MUHAMMAD FIQRI AWALUDIN', 'Teknik Komputer dan Jaringan (TKJ) 1', 'Kapuk Muara', '081319889725', 'S-081319889725@smkth-jakbar.com', 'Bekerja', '2021'),
(10597, 'NAUFAL HIDAYAT', 'Teknik Komputer dan Jaringan (TKJ) 1', 'JL.JELAMBAR ILIR NO.36', '081319889726', 'S-081319889726@smkth-jakbar.com', 'Bekerja', '2021'),
(10598, 'PUTU YOGA ADIPRATAMA', 'Teknik Komputer dan Jaringan (TKJ) 1', 'JEMBATAN II', '081319889717', 'S-081319889717@smkth-jakbar.com', 'Kuliah', '2021'),
(10599, 'RENDY NASRIANTO', 'Teknik Komputer dan Jaringan (TKJ) 1', 'JL. JELAMBAR SELATAN VII NO.5', '081319889716', 'S-081319889716@smkth-jakbar.com', 'Kuliah', '2021'),
(10600, 'RIDHO GILANG PRATAMA', 'Teknik Komputer dan Jaringan (TKJ) 1', 'Teluk Gong Rt. 001/013 Kel : Pelajagan', '081319889714', 'S-081319889714@smkth-jakbar.com', 'Bekerja', '2021'),
(10601, 'RIDO RIZKI SAPUTRA', 'Teknik Komputer dan Jaringan (TKJ) 1', 'RUSUNAWA PULOGEBANG BLOK H LT.2 NO.212', '081319889737', 'S-081319889737@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2021'),
(10602, 'Rido Setiawan', 'Teknik Komputer dan Jaringan (TKJ) 1', 'Jl. Kapuk Muara', '081319889736', 'S-081319889736@smkth-jakbar.com', 'Kuliah', '2021'),
(10603, 'RIDZUAN OKTAVIAN SUSANTO', 'Teknik Komputer dan Jaringan (TKJ) 1', 'PESING KONENG', '081319889735', 'S-081319889735@smkth-jakbar.com', 'Wirausaha', '2021'),
(10604, 'RIKHO SAHPUTRA', 'Teknik Komputer dan Jaringan (TKJ) 1', 'JL. RAYA TELUK GONG', '081319889734', 'S-081319889734@smkth-jakbar.com', 'Bekerja', '2021'),
(10605, 'RIO JERYANSYAH', 'Teknik Komputer dan Jaringan (TKJ) 1', 'Kapuk Muara', '081319889733', 'S-081319889733@smkth-jakbar.com', 'Bekerja', '2021'),
(10606, 'RIO KARISMA', 'Teknik Komputer dan Jaringan (TKJ) 1', 'JL JELAMBAR KB. PISANG', '081319889732', 'S-081319889732@smkth-jakbar.com', 'Bekerja', '2021'),
(10607, 'RISQY DARMAWAN', 'Teknik Komputer dan Jaringan (TKJ) 1', 'JL KAMPUNG GUSTI KB. PALA', '081319889728', 'S-081319889728@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2021'),
(10608, 'RIZIEQ CHANDRA RIVALQI', 'Teknik Komputer dan Jaringan (TKJ) 1', 'KAPUK MUARA', '081319889731', 'S-081319889731@smkth-jakbar.com', 'Bekerja', '2021'),
(10609, 'SANDI JOANDRA', 'Teknik Komputer dan Jaringan (TKJ) 1', 'PESING POKLAR', '081319889730', 'S-081319889730@smkth-jakbar.com', 'Bekerja', '2021');
INSERT INTO `siswa` (`id`, `nama_siswa`, `kompetensi_keahlian`, `alamat`, `tlpn`, `email`, `status`, `tahun_lulus`) VALUES
(10610, 'VERA ANGGRAENI', 'Teknik Komputer dan Jaringan (TKJ) 1', 'JLN. PADAMULYA, NO. 03', '081319889729', 'S-081319889729@smkth-jakbar.com', 'Kuliah', '2021'),
(10611, 'AHMAD DAEROJI', 'Teknik Komputer dan Jaringan (TKJ) 2', 'JL.INDRALOKA 1 GG.DAMAI 5', '081319889926', 'S-081319889926@smkth-jakbar.com', 'Bekerja', '2021'),
(10612, 'AHMAD ILHAM JAELANI', 'Teknik Komputer dan Jaringan (TKJ) 2', 'KEBON PISANG', '081319889923', 'S-081319889923@smkth-jakbar.com', 'Bekerja', '2021'),
(10613, 'AHMAD RAMDANI', 'Teknik Komputer dan Jaringan (TKJ) 2', 'JL.INDRALOKA I GG DAMAI 5 NO.B3', '081319889921', 'S-081319889921@smkth-jakbar.com', 'Wirausaha', '2021'),
(10614, 'AHMAD SAHAL MAHFUD', 'Teknik Komputer dan Jaringan (TKJ) 2', 'KAMP GUSTI KBN PALA', '081319889920', 'S-081319889920@smkth-jakbar.com', 'Bekerja', '2021'),
(10615, 'AKBAR HANDOYO', 'Teknik Komputer dan Jaringan (TKJ) 2', 'JLN. JEMBATAN BESI NO. 9', '081319889918', 'S-081319889918@smkth-jakbar.com', 'Wirausaha', '2021'),
(10616, 'ALDI AL VRYANDI', 'Teknik Komputer dan Jaringan (TKJ) 2', 'JL KAPUK MUARA', '081319889917', 'S-081319889917@smkth-jakbar.com', 'Wirausaha', '2021'),
(10617, 'ALDI DARMAWAN', 'Teknik Komputer dan Jaringan (TKJ) 2', 'JL. KOMP. PENERANGAN NO. 50 C', '081319889916', 'S-081319889916@smkth-jakbar.com', 'Bekerja', '2021'),
(10618, 'BAYU INDRA PRATAMA', 'Teknik Komputer dan Jaringan (TKJ) 2', 'KAMPUNG GUSTI KB. PALA', '081319889914', 'S-081319889914@smkth-jakbar.com', 'Bekerja', '2021'),
(10619, 'DHENI RAMADHAN', 'Teknik Komputer dan Jaringan (TKJ) 2', 'JL RSS TAMBORA III BLOK C LT 4/18', '081319889913', 'S-081319889913@smkth-jakbar.com', 'Bekerja', '2021'),
(10620, 'GALIH GUNAWAN', 'Teknik Komputer dan Jaringan (TKJ) 2', 'PESING POGLAR', '081319889912', 'S-081319889912@smkth-jakbar.com', 'Bekerja', '2021'),
(10621, 'GUNTUR', 'Teknik Komputer dan Jaringan (TKJ) 2', 'JL.KAPUK PROYEK', '081319889910', 'S-081319889910@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2021'),
(10622, 'GUS MAULANA', 'Teknik Komputer dan Jaringan (TKJ) 2', 'JL.INDRALOKA 4 NO.1859', '081319889909', 'S-081319889909@smkth-jakbar.com', 'Bekerja', '2021'),
(10623, 'GYANT LUHMA WIRA YUDHA', 'Teknik Komputer dan Jaringan (TKJ) 2', 'KAMPUNG GUSTI KB. SAYUR', '081319889908', 'S-081319889908@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2021'),
(10624, 'HADIS HANDIKA HAYA', 'Teknik Komputer dan Jaringan (TKJ) 2', 'Jl. Bandengan Utara', '081319889907', 'S-081319889907@smkth-jakbar.com', 'Kuliah', '2021'),
(10625, 'HESTY NURAINI', 'Teknik Komputer dan Jaringan (TKJ) 2', 'PESING POGLAR', '081319889906', 'S-081319889906@smkth-jakbar.com', 'Bekerja', '2021'),
(10626, 'IKMAL IHSAN FADILLAH', 'Teknik Komputer dan Jaringan (TKJ) 2', 'JL PESING POGLAR', '081319889905', 'S-081319889905@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2021'),
(10627, 'ILBI NURFAHRI', 'Teknik Komputer dan Jaringan (TKJ) 2', 'Jl. Rawa Bebek', '081319889904', 'S-081319889904@smkth-jakbar.com', 'Bekerja', '2021'),
(10628, 'IQBAL FIRMANSYAH', 'Teknik Komputer dan Jaringan (TKJ) 2', 'JL KP. GUSTI  GG. KANTONG', '081319889903', 'S-081319889903@smkth-jakbar.com', 'Kuliah', '2021'),
(10629, 'IRMA NIRMALASARI', 'Teknik Komputer dan Jaringan (TKJ) 2', 'Jl. Rawa Bebek', '081319889899', 'S-081319889899@smkth-jakbar.com', 'Bekerja', '2021'),
(10630, 'Lefiansya', 'Teknik Komputer dan Jaringan (TKJ) 2', 'JL. JELAMBAR TIMUR NO. 30', '081319889897', 'S-081319889897@smkth-jakbar.com', 'Bekerja', '2021'),
(10631, 'Muchamad Iqbal Gimastian', 'Teknik Komputer dan Jaringan (TKJ) 2', 'KP SALO', '081319889896', 'S-081319889896@smkth-jakbar.com', 'Belum bekerja/belum kuliah', '2021'),
(10632, 'MUHAMAD RAFDI AL WAFI', 'Teknik Komputer dan Jaringan (TKJ) 2', 'KAMPUNG GUSTI', '081319889891', 'S-081319889891@smkth-jakbar.com', 'Kuliah', '2021'),
(10633, 'MUHAMAD RIDHO MAULANA', 'Teknik Komputer dan Jaringan (TKJ) 2', 'JL. ANGKE INDAH GG. III', '081319889879', 'S-081319889879@smkth-jakbar.com', 'Bekerja', '2021'),
(10634, 'MUHAMMAD JERRY AL MI\'RAJ', 'Teknik Komputer dan Jaringan (TKJ) 2', 'JL.KP BALI PESING NO.33', '081319889895', 'S-081319889895@smkth-jakbar.com', 'Kuliah', '2021'),
(10635, 'MUHAMMAD MALIKI IVAN FADILLAH', 'Teknik Komputer dan Jaringan (TKJ) 2', 'JELAMBAR TIMUR NO. 54', '081319889892', 'S-081319889892@smkth-jakbar.com', 'Bekerja', '2021'),
(10636, 'MUHAMMAD RAFI FERDIAZ', 'Teknik Komputer dan Jaringan (TKJ) 2', 'RUSUNAWA TAMBORA/ TWR B L 4', '081319889890', 'S-081319889890@smkth-jakbar.com', 'Bekerja', '2021'),
(10637, 'MUHAMMAD RAFLI', 'Teknik Komputer dan Jaringan (TKJ) 2', 'JL.PANGERAN TUBAGUS ANGKE PESING', '081319889886', 'S-081319889886@smkth-jakbar.com', 'Bekerja', '2021'),
(10638, 'MUHAMMAD RAIHAN', 'Teknik Komputer dan Jaringan (TKJ) 2', 'JL KP GUSTI GG. KANTONG', '081319889882', 'S-081319889882@smkth-jakbar.com', 'Bekerja', '2021'),
(10639, 'MUHAMMAD RENDI', 'Teknik Komputer dan Jaringan (TKJ) 2', 'TELUK GONG', '081319889881', 'S-081319889881@smkth-jakbar.com', 'Bekerja', '2021'),
(10640, 'MUHAMMAD REZA PRATAMA', 'Teknik Komputer dan Jaringan (TKJ) 2', 'JL. JELAMBAR KEBON PISANG NO. 49', '081319889880', 'S-081319889880@smkth-jakbar.com', 'Bekerja', '2021'),
(10641, 'RAFLIANDY PAKSY RAHARJO', 'Teknik Komputer dan Jaringan (TKJ) 2', 'KAMPUNG KALI MATI', '081319889878', 'S-081319889878@smkth-jakbar.com', 'Kuliah', '2021'),
(10642, 'RIZKI SURYANTO', 'Teknik Komputer dan Jaringan (TKJ) 2', 'JL. PADEMANGAN III GG.3.A N0.21', '081319889877', 'S-081319889877@smkth-jakbar.com', 'Bekerja', '2021'),
(10643, 'RIZKY ADE IRAWAN', 'Teknik Komputer dan Jaringan (TKJ) 2', 'Teluk Gong', '081319889876', 'S-081319889876@smkth-jakbar.com', 'Bekerja', '2021'),
(10644, 'SAHRUL ANWAR', 'Teknik Komputer dan Jaringan (TKJ) 2', 'Jl. Jemb Dua Gg Pada Mulya', '081319889872', 'S-081319889872@smkth-jakbar.com', 'Wirausaha', '2021'),
(10645, 'SALMAN AL BANA', 'Teknik Komputer dan Jaringan (TKJ) 2', 'KAPUK MANGGA UBI', '081319889875', 'S-081319889875@smkth-jakbar.com', 'Kuliah', '2021'),
(10646, 'SALSABILA PUTRI', 'Teknik Komputer dan Jaringan (TKJ) 2', 'JL. INDRALOKA I GG. III', '081319889929', 'S-081319889929@smkth-jakbar.com', 'Bekerja', '2021'),
(10647, 'SONI ALFIAN', 'Teknik Komputer dan Jaringan (TKJ) 2', 'Teluk Gong Gg. Mazda', '081319889930', 'S-081319889930@smkth-jakbar.com', 'Wirausaha', '2021'),
(10648, 'TEGUH ADITIYO NUGROHO', 'Teknik Komputer dan Jaringan (TKJ) 2', 'JL.KOMP BNI46 PESING BLOK BB/1 NO.16', '081319889931', 'S-081319889931@smkth-jakbar.com', 'Bekerja', '2021'),
(10649, 'TRI FANDI JUNIOR', 'Teknik Komputer dan Jaringan (TKJ) 2', 'KP. BALI PESING', '081319889932', 'S-081319889932@smkth-jakbar.com', 'Wirausaha', '2021'),
(10650, 'VICKY ARDIANSYAH', 'Teknik Komputer dan Jaringan (TKJ) 2', 'JL. ANGKE INDAH NO.17', '081319889929', 'S-081319889929@smkth-jakbar.com', 'Bekerja', '2021'),
(10651, 'WAHYU ANGGARA PUTRA', 'Teknik Komputer dan Jaringan (TKJ) 2', 'Kapuk Muara', '081319889934', 'S-081319889934@smkth-jakbar.com', 'Bekerja', '2021'),
(10652, 'AMIR', 'Teknik Komputer dan Jaringan (TKJ) 3', 'JL KP. GUSTI GG. KANTONG', '081319889764', 'S-081319889764@smkth-jakbar.com', 'Bekerja', '2021'),
(10653, 'ANDIKA AGASTA', 'Teknik Komputer dan Jaringan (TKJ) 3', 'JL. JELAMBAR UTAMA IV', '081319889765', 'S-081319889765@smkth-jakbar.com', 'Bekerja', '2021'),
(10654, 'ANDJAS SETIAWAN', 'Teknik Komputer dan Jaringan (TKJ) 3', 'SWADAYA PESING POGLAR', '081319889766', 'S-081319889766@smkth-jakbar.com', 'Bekerja', '2021'),
(10655, 'ANDRE', 'Teknik Komputer dan Jaringan (TKJ) 3', 'Jl. Pekojan III', '081319889767', 'S-081319889767@smkth-jakbar.com', 'Wirausaha', '2021'),
(10656, 'ANDREAN MERDIANSAH', 'Teknik Komputer dan Jaringan (TKJ) 3', 'Jl. Anyar I', '081319889768', 'S-081319889768@smkth-jakbar.com', 'Wirausaha', '2021'),
(10657, 'ANDRI WIDIYATMOKO', 'Teknik Komputer dan Jaringan (TKJ) 3', 'JL KAPUK POGLAR', '081319889769', 'S-081319889769@smkth-jakbar.com', 'Bekerja', '2021'),
(10658, 'ANDY SAPUTRA', 'Teknik Komputer dan Jaringan (TKJ) 3', 'JL.INDRALOKA 1 GG DAMAI 5 NO.53', '081319889771', 'S-081319889771@smkth-jakbar.com', 'Wirausaha', '2021'),
(10659, 'APIN SAPUTRA WIJAYA', 'Teknik Komputer dan Jaringan (TKJ) 3', 'JL. KP. GUSTI', '081319889772', 'S-081319889772@smkth-jakbar.com', 'Kuliah', '2021'),
(10660, 'BAGUS SETO', 'Teknik Komputer dan Jaringan (TKJ) 3', 'JL. TELUK GONG', '081319889773', 'S-081319889773@smkth-jakbar.com', 'Bekerja', '2021'),
(10661, 'DICKY SATYA EKAPRAMUNDA', 'Teknik Komputer dan Jaringan (TKJ) 3', 'JL. AL AMANAH', '081319889774', 'S-081319889774@smkth-jakbar.com', 'Kuliah', '2021'),
(10662, 'DIMAS PERMANA', 'Teknik Komputer dan Jaringan (TKJ) 3', 'RAWA BEBEK', '081319889780', 'S-081319889780@smkth-jakbar.com', 'Bekerja', '2021'),
(10663, 'ELANG AGUSTIAN SAPUTRA', 'Teknik Komputer dan Jaringan (TKJ) 3', 'Kampung Gusti', '081319889781', 'S-081319889781@smkth-jakbar.com', 'Wirausaha', '2021'),
(10664, 'JONASDA', 'Teknik Komputer dan Jaringan (TKJ) 3', 'PRIMA INDAH V BLOK KK II/6', '081319889783', 'S-081319889783@smkth-jakbar.com', 'Bekerja', '2021'),
(10665, 'KEINDRAN ALVIANO ARUDHISKARA', 'Teknik Komputer dan Jaringan (TKJ) 3', 'Kapuk Poglar', '081319889784', 'S-081319889784@smkth-jakbar.com', 'Bekerja', '2021'),
(10666, 'KHOLIFAH ADAWIYAH', 'Teknik Komputer dan Jaringan (TKJ) 3', 'KAPUK MUARA', '081319889785', 'S-081319889785@smkth-jakbar.com', 'Bekerja', '2021'),
(10667, 'KHRISNA WAHYU SATRIA', 'Teknik Komputer dan Jaringan (TKJ) 3', 'KAMPUNG GUSTI KB.PALA', '081319889786', 'S-081319889786@smkth-jakbar.com', 'Bekerja', '2021'),
(10668, 'KRISNA WAHYU PRATAMA', 'Teknik Komputer dan Jaringan (TKJ) 3', 'JL F 2 TELUK GONG', '081319889787', 'S-081319889787@smkth-jakbar.com', 'Wirausaha', '2021'),
(10669, 'KURNIA AR RAHMAN', 'Teknik Komputer dan Jaringan (TKJ) 3', 'JL KP. KALIMATI', '081319889788', 'S-081319889788@smkth-jakbar.com', 'Wirausaha', '2021'),
(10670, 'Lukman Bahri', 'Teknik Komputer dan Jaringan (TKJ) 3', 'Pesing Koneng', '081319889789', 'S-081319889789@smkth-jakbar.com', 'Bekerja', '2021'),
(10671, 'MADE KUSUMA WARDHANI', 'Teknik Komputer dan Jaringan (TKJ) 3', 'JL. KAPUK POGLAR', '081319889749', 'S-081319889749@smkth-jakbar.com', 'Bekerja', '2021'),
(10672, 'MUHAMAD ZIDAN ALDIANSYAH', 'Teknik Komputer dan Jaringan (TKJ) 3', 'KAPUK MUARA', '081319889758', 'S-081319889758@smkth-jakbar.com', 'Kuliah', '2021'),
(10673, 'MUHAMMAD AKBAR ARIF', 'Teknik Komputer dan Jaringan (TKJ) 3', 'MUARA KARANG BARAT', '081319889750', 'S-081319889750@smkth-jakbar.com', 'Kuliah', '2021'),
(10674, 'MUHAMMAD ARIQ ATHALLAH', 'Teknik Komputer dan Jaringan (TKJ) 3', 'JL JELAMBAR JAYA II JL U NO. 3', '081319889751', 'S-081319889751@smkth-jakbar.com', 'Bekerja', '2021'),
(10675, 'Muhammad Bayu Saputra', 'Teknik Komputer dan Jaringan (TKJ) 3', 'Jl. Kampung Gaga', '081319889752', 'S-081319889752@smkth-jakbar.com', 'Bekerja', '2021'),
(10676, 'MUHAMMAD RAIHAN', 'Teknik Komputer dan Jaringan (TKJ) 3', 'ANGKE JAYA XIII GG. IV', '081319889753', 'S-081319889753@smkth-jakbar.com', 'Bekerja', '2021'),
(10677, 'MUHAMMAD RIZKY AULIA', 'Teknik Komputer dan Jaringan (TKJ) 3', 'JL. KP. GUSTI', '081319889754', 'S-081319889754@smkth-jakbar.com', 'Bekerja', '2021'),
(10678, 'MUHAMMAD SAUQI ILHAM', 'Teknik Komputer dan Jaringan (TKJ) 3', 'JL. KP.SALO', '081319889755', 'S-081319889755@smkth-jakbar.com', 'Kuliah', '2021'),
(10679, 'MUHAMMAD YUSRIL IZZA SAPUTRA', 'Teknik Komputer dan Jaringan (TKJ) 3', 'JL.JELAMBAR BARU NO.47', '081319889756', 'S-081319889756@smkth-jakbar.com', 'Bekerja', '2021'),
(10680, 'NAVIZUL AL HAFIDZ DZIKRIN', 'Teknik Komputer dan Jaringan (TKJ) 3', 'JL KAPUK MUARA', '081319889761', 'S-081319889761@smkth-jakbar.com', 'Bekerja', '2021'),
(10681, 'OKTARIVANI', 'Teknik Komputer dan Jaringan (TKJ) 3', 'JL KAPUK MUARA', '081319889762', 'S-081319889762@smkth-jakbar.com', 'Wirausaha', '2021'),
(10682, 'Raffi Aprishal', 'Teknik Komputer dan Jaringan (TKJ) 3', 'KAMPUNG SALO', '081319889740', 'S-081319889740@smkth-jakbar.com', 'Bekerja', '2021'),
(10683, 'RAFIF SYARI HIDAYAH', 'Teknik Komputer dan Jaringan (TKJ) 3', 'JL.INDRALOKA I GG.III NO.59', '081319889744', 'S-081319889744@smkth-jakbar.com', 'Kuliah', '2021'),
(10684, 'RENDI WIJAYA', 'Teknik Komputer dan Jaringan (TKJ) 3', 'JL. BANDENGAN UTARA', '081319889746', 'S-081319889746@smkth-jakbar.com', 'Bekerja', '2021'),
(10685, 'REVANZA IQBAL HAKIM', 'Teknik Komputer dan Jaringan (TKJ) 3', 'JL. TELUK GONG JL D 2', '081319889747', 'S-081319889747@smkth-jakbar.com', 'Wirausaha', '2021'),
(10686, 'RIFAN NIUS ARRAHMAN', 'Teknik Komputer dan Jaringan (TKJ) 3', 'JL JEMBATAN III', '081319889778', 'S-081319889778@smkth-jakbar.com', 'Bekerja', '2021'),
(10687, 'TAUFIK HIDAYAT', 'Teknik Komputer dan Jaringan (TKJ) 3', 'JL. BIDARA', '081319889779', 'S-081319889779@smkth-jakbar.com', 'Kuliah', '2021'),
(10688, 'WANDA AYU WARDHANI', 'Teknik Komputer dan Jaringan (TKJ) 3', 'PADA MULYA', '081319889748', 'S-081319889748@smkth-jakbar.com', 'Wirausaha', '2021'),
(10689, 'YOHAN CAHYADI', 'Teknik Komputer dan Jaringan (TKJ) 3', 'JL.JELAMBAR UTAMA IV NO.65', '081319889739', 'S-081319889739@smkth-jakbar.com', 'Bekerja', '2021'),
(10690, 'YOSHA SATRIA', 'Teknik Komputer dan Jaringan (TKJ) 3', 'Rusun Tambora II Blok C Lt.1 No.2', '081319889738', 'S-081319889738@smkth-jakbar.com', 'Bekerja', '2021'),
(10691, 'YUSUF ADITYAS PRATAMA', 'Teknik Komputer dan Jaringan (TKJ) 3', 'KAMPUNG GUSTI NO:21', '081319889782', 'S-081319889782@smkth-jakbar.com', 'Bekerja', '2021');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lamar_loker`
--
ALTER TABLE `lamar_loker`
  ADD PRIMARY KEY (`id_lamar`);

--
-- Indexes for table `lowongan`
--
ALTER TABLE `lowongan`
  ADD PRIMARY KEY (`id_lowongan`);

--
-- Indexes for table `permintaan_tenaga_kerja`
--
ALTER TABLE `permintaan_tenaga_kerja`
  ADD PRIMARY KEY (`id_permintaan_tenaga_kerja`);

--
-- Indexes for table `perusahaan`
--
ALTER TABLE `perusahaan`
  ADD PRIMARY KEY (`id_perusahaan`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth`
--
ALTER TABLE `auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `lamar_loker`
--
ALTER TABLE `lamar_loker`
  MODIFY `id_lamar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lowongan`
--
ALTER TABLE `lowongan`
  MODIFY `id_lowongan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `permintaan_tenaga_kerja`
--
ALTER TABLE `permintaan_tenaga_kerja`
  MODIFY `id_permintaan_tenaga_kerja` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64174299;

--
-- AUTO_INCREMENT for table `perusahaan`
--
ALTER TABLE `perusahaan`
  MODIFY `id_perusahaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
