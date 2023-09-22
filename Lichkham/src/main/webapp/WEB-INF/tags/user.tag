<%@ tag language="java" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ attribute name="content" fragment="true"%>


<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Medicio Bootstrap Template - Index</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="assets/user/img/favicon.png" rel="icon">
<link href="assets/user/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="assets/user/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet">
<link href="assets/user/vendor/animate.css/animate.min.css"
	rel="stylesheet">
<link href="assets/user/vendor/aos/aos.css" rel="stylesheet">
<link href="assets/user/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="assets/user/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="assets/user/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="assets/user/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link href="assets/user/vendor/swiper/swiper-bundle.min.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="assets/user/css/style.css" rel="stylesheet">

<!-- =======================================================
  * Template Name: Medicio
  * Updated: Jul 27 2023 with Bootstrap v5.3.1
  * Template URL: https://bootstrapmade.com/medicio-free-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

	<!-- ======= Top Bar ======= -->
	<div id="topbar" class="d-flex align-items-center fixed-top">
		<div
			class="container d-flex align-items-center justify-content-center justify-content-md-between">
			<div class="align-items-center d-none d-md-flex">
				<i class="bi bi-clock"></i> Monday - Saturday, 8AM to 10PM
			</div>
			<div class="d-flex align-items-center">
				<i class="bi bi-phone"></i> Call us now 0971077134
			</div>
		</div>
	</div>

	<!-- ======= Header ======= -->
	<header id="header" class="fixed-top">
		<div class="container d-flex align-items-center">

			<a href="home" class="logo me-auto"><img
				src="assets/user/img/logo.png" alt=""></a>
			<!-- Uncomment below if you prefer to use an image logo -->
			<!-- <h1 class="logo me-auto"><a href="index.html">Medicio</a></h1> -->

			<nav id="navbar" class="navbar order-last order-lg-0">
				<ul>
					<li><a class="nav-link scrollto " href="/Lichkham/">Trang Chu</a></li>
					<li><a  href="user?action=khoa">Khoa</a></li>
					<li><a class="nav-link scrollto" href="#services">Dich Vu</a></li>
					<li><a class="nav-link scrollto" href="user?action=benhnhan">Benh Nhan</a></li>
					<li><a class="nav-link scrollto" href="/Lichkham/">Thong Tin</a></li>
					<li><a class="nav-link scrollto" href="/Lichkham/">Lien He</li>
				</ul>
				<i class="bi bi-list mobile-nav-toggle"></i>
			</nav>
			<!-- .navbar -->

			<a href="user?action=datlich" class="appointment-btn scrollto"><span
				class="d-none d-md-inline">Dat Lich</span> </a>
			<a href="user?action=login" class="appointment-btn scrollto"><span
				class="d-none d-md-inline">Dang Nhap</span> </a>
				<a href="user?action=dangnhaps" class="appointment-btn scrollto"><span
				class="d-none d-md-inline">Dang ki</span> </a>
				<a href="user?action=lichkham&mabn=${sessionScope.bn.mabn}" class="appointment-btn scrollto"><span
				class="d-none d-md-inline">${sessionScope.bn.tenbn}</span> </a>
		</div>
	</header>
	<!-- End Header -->

	<!-- ======= Hero Section ======= -->
	
	<!-- End Cta Section -->

	<!-- ======= About Us Section ======= -->
	
<div style="margin-top: 300px"></div>

	<jsp:invoke fragment="content"></jsp:invoke>




	
	<!-- End Footer -->

	<div id="preloader"></div>
	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<script src="assets/user/vendor/purecounter/purecounter_vanilla.js"></script>
	<script src="assets/user/vendor/aos/aos.js"></script>
	<script src="assets/user/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/user/vendor/glightbox/js/glightbox.min.js"></script>
	<script src="assets/user/vendor/swiper/swiper-bundle.min.js"></script>
	<script src="assets/user/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="assets/user/js/main.js"></script>


<!-- Template user -->

 <script src="assets/admin/vendors/jquery/dist/jquery.min.js"></script>
    <script src="assets/admin/vendors/popper.js/dist/umd/popper.min.js"></script>
    <script src="assets/admin/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="assets/admin/js/main.js"></script>


    <script src="assets/admin/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="assets/admin/vendors/datatables.net-bs4/js/dataTables.bootstrap4.min.js"></script>
    <script src="assets/admin/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="assets/admin/vendors/datatables.net-buttons-bs4/js/buttons.bootstrap4.min.js"></script>
    <script src="assets/admin/vendors/jszip/dist/jszip.min.js"></script>
    <script src="assets/admin/vendors/pdfmake/build/pdfmake.min.js"></script>
    <script src="assets/admin/vendors/pdfmake/build/vfs_fonts.js"></script>
    <script src="assets/admin/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="assets/admin/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="assets/admin/vendors/datatables.net-buttons/js/buttons.colVis.min.js"></script>
    <script src="assets/admin/js/init-scripts/data-table/datatables-init.js"></script>
</body>

</html>
