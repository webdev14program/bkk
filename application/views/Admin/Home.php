<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
				<div class="sidebar-brand-text mx-3">Admin BKK</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Dashboard -->
			<li class="nav-item active">
				<a class="nav-link" href="<?= base_url() ?>Dashboard">
					<i class="fas fa-fw fa-tachometer-alt"></i>
					<span>Dashboard</span></a>
			</li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">
				Master
			</div>
			<li class="nav-item">
				<a class="nav-link" href="<?= base_url() ?>Dashboard/kerja_sama_perusahaan">
					<i class="fas fa-building"></i>
					<span>Kerja Sama Perusahaan</span></a>
			</li>
			<!-- <li class="nav-item" style="margin-top: -20px;">
				<a class="nav-link" href="<?= base_url() ?>Dashboard/lowongan">
					<i class="fas fa-align-justify"></i>
					<span>Lowongan Pekerjaan</span></a>
			</li>
			<li class="nav-item" style="margin-top: -20px;">
				<a class="nav-link" href="<?= base_url() ?>Dashboard/pelamar_loker">
					<i class="fas fa-user-friends"></i>
					<span>Siswa Pelamar Loker</span></a>
			</li> -->
			<hr class="sidebar-divider">
			<div class="sidebar-heading">
				Post kegiatan
			</div>
			<!-- Nav Item - Tables -->
			<li class="nav-item">
				<a class="nav-link" href="<?= base_url() ?>Dashboard/post_kegiatan">
					<i class="fas fa-vote-yea"></i>
					<span>Data Post</span></a>
			</li>
			<hr class="sidebar-divider">
			<!-- Heading -->
			<div class="sidebar-heading">
				Data Lulusan
			</div>
			<!-- Nav Item - Tables -->
			<!-- <li class="nav-item">
				<a class="nav-link" href="<?= base_url() ?>Dashboard/permintaan_tenaga_kerja">
					<i class="fas fa-building"></i>
					<span>Data Perusahaan</span></a>
			</li> -->
			<li class="nav-item">
				<a class="nav-link" href="<?= base_url() ?>Dashboard/alumni">
					<i class="fas fa-user-tie"></i>
					<span>Data Lulusan</span></a>
			</li>

			<hr class="sidebar-divider">

			<!-- <div class="sidebar-heading">
				Tracer Study
			</div>
			<li class="nav-item">
				<a class="nav-link" href="<?= base_url() ?>Dashboard/tracer_study">
					<i class="fas fa-building"></i>
					<span>Data Tracert Study</span></a>
			</li> -->



			<!-- Heading -->
			<div class="sidebar-heading">
				Logout
			</div>
			<!-- Nav Item - Tables -->
			<li class="nav-item">
				<a class="nav-link" href="<?= base_url() ?>Dashboard/logout">
					<i class="fas fa-sign-out-alt"></i>
					<span>Logout</span></a>
			</li>

			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block">

			<!-- Sidebar Toggler (Sidebar) -->
			<div class="text-center d-none d-md-inline">
				<button class="rounded-circle border-0" id="sidebarToggle"></button>
			</div>
		</ul>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

					<!-- Sidebar Toggle (Topbar) -->
					<button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>

					<ul class="navbar-nav ml-auto">
						<div class="topbar-divider d-none d-sm-block"></div>

						<!-- Nav Item - User Information -->
						<li class="nav-item dropdown no-arrow">
							<a class="nav-link dropdown-toggle">
								<span class="mr-2 d-none d-lg-inline text-gray-600 small">ADMINISTRATOR</span>
							</a>
							<!-- Dropdown - User Information -->
						</li>

					</ul>

				</nav>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">
					<?php $this->load->view($content) ?>
				</div>


				<!-- End of Main Content -->

				<!-- Footer -->

				<!-- End of Footer -->
			</div>
			<!-- End of Content Wrapper -->
			<footer class="sticky-footer bg-warning">
				<div class="container my-auto">
					<div class="copyright text-center text-white my-auto">
						<h5 class="text-center font-weight-bold">Copyright &copy; Bursa Kerja Khusus SMK Tunas Harapan</h5>
						<!-- <h6 class="text-center font-weight-bold">Designed by Rahmadika S Setiawan, S.Kom</h6> -->
					</div>
				</div>
			</footer>
		</div>
		<!-- End of Page Wrapper -->

		<!-- Scroll to Top Button-->