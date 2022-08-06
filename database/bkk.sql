-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 06, 2022 at 12:26 PM
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
-- AUTO_INCREMENT for table `perusahaan`
--
ALTER TABLE `perusahaan`
  MODIFY `id_perusahaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
