<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="layout" tagdir="/WEB-INF/tags"%>

<layout:user>
	<jsp:attribute name="content">
		<section id="hero">
			<div id="heroCarousel" data-bs-interval="5000"
				class="carousel slide carousel-fade" data-bs-ride="carousel">

				<ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

				<div class="carousel-inner" role="listbox">

					<!-- Slide 1 -->
					<div class="carousel-item active"
						style="background-image: url(assets/user/img/slide/slide-1.jpg)">
						<div class="container">
							<h2>
								Welcome to <span>Medicio</span>
							</h2>
						</div>
					</div>

					<!-- Slide 2 -->
					<div class="carousel-item"
						style="background-image: url(assets/user/img/slide/slide-2.jpg)">
					</div>
					<!-- Slide 3 -->
					<div class="carousel-item"
						style="background-image: url(assets/user/img/slide/slide-3.jpg)">
					</div>

				</div>

				<a class="carousel-control-prev" href="#heroCarousel" role="button"
					data-bs-slide="prev"> <span
					class="carousel-control-prev-icon bi bi-chevron-left"
					aria-hidden="true"></span>
				</a> <a class="carousel-control-next" href="#heroCarousel" role="button"
					data-bs-slide="next"> <span
					class="carousel-control-next-icon bi bi-chevron-right"
					aria-hidden="true"></span>
				</a>

			</div>
		</section>
		<!-- End Hero -->
		<main id="main">

			<!-- ======= Featured Services Section ======= -->
			<section id="featured-services" class="featured-services">
				<div class="container" data-aos="fade-up">

					<div class="row">
						<div
							class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
							<div class="icon-box" data-aos="fade-up" data-aos-delay="100">
								<div class="icon">
									<i class="fas fa-heartbeat"></i>
								</div>
								<h4 class="title">
									<a href="">Lorem Ipsum</a>
								</h4>
								<p class="description">Voluptatum deleniti atque corrupti
									quos dolores et quas molestias excepturi</p>
							</div>
						</div>

						<div
							class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
							<div class="icon-box" data-aos="fade-up" data-aos-delay="200">
								<div class="icon">
									<i class="fas fa-pills"></i>
								</div>
								<h4 class="title">
									<a href="">Sed ut perspiciatis</a>
								</h4>
								<p class="description">Duis aute irure dolor in
									reprehenderit in voluptate velit esse cillum dolore</p>
							</div>
						</div>

						<div
							class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
							<div class="icon-box" data-aos="fade-up" data-aos-delay="300">
								<div class="icon">
									<i class="fas fa-thermometer"></i>
								</div>
								<h4 class="title">
									<a href="">Magni Dolores</a>
								</h4>
								<p class="description">Excepteur sint occaecat cupidatat non
									proident, sunt in culpa qui officia</p>
							</div>
						</div>

						<div
							class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
							<div class="icon-box" data-aos="fade-up" data-aos-delay="400">
								<div class="icon">
									<i class="fas fa-dna"></i>
								</div>
								<h4 class="title">
									<a href="">Nemo Enim</a>
								</h4>
								<p class="description">At vero eos et accusamus et iusto
									odio dignissimos ducimus qui blanditiis</p>
							</div>
						</div>

					</div>

				</div>
			</section>
			<section id="about" class="about">
				<div class="container" data-aos="fade-up">

					<div class="section-title">
						<h2>About Us</h2>
						<p>Magnam dolores commodi suscipit. Necessitatibus eius
							consequatur ex aliquid fuga eum quidem. Sit sint consectetur
							velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit
							suscipit alias ea. Quia fugiat sit in iste officiis commodi
							quidem hic quas.</p>
					</div>

					<div class="row">
						<div class="col-lg-6" data-aos="fade-right">
							<img src="assets/user/img/about.jpg" class="img-fluid" alt="">
						</div>
						<div class="col-lg-6 pt-4 pt-lg-0 content" data-aos="fade-left">
							<h3>Voluptatem dignissimos provident quasi corporis
								voluptates sit assumenda.</h3>
							<p class="fst-italic">Lorem ipsum dolor sit amet, consectetur
								adipiscing elit, sed do eiusmod tempor incididunt ut labore et
								dolore magna aliqua.</p>
							<ul>
								<li><i class="bi bi-check-circle"></i> Ullamco laboris nisi
									ut aliquip ex ea commodo consequat.</li>
								<li><i class="bi bi-check-circle"></i> Duis aute irure
									dolor in reprehenderit in voluptate velit.</li>
								<li><i class="bi bi-check-circle"></i> Ullamco laboris nisi
									ut aliquip ex ea commodo consequat. Duis aute irure dolor in
									reprehenderit in voluptate trideta storacalaperda mastiro
									dolore eu fugiat nulla pariatur.</li>
							</ul>
							<p>Ullamco laboris nisi ut aliquip ex ea commodo consequat.
								Duis aute irure dolor in reprehenderit in voluptate velit esse
								cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
								cupidatat non proident, sunt in culpa qui officia deserunt
								mollit anim id est laborum</p>
						</div>
					</div>

				</div>
			</section>
			<!-- End About Us Section -->

			<!-- ======= Counts Section ======= -->
			<section id="counts" class="counts">
				<div class="container" data-aos="fade-up">

					<div class="row no-gutters">

						<div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
							<div class="count-box">
								<i class="fas fa-user-md"></i> <span data-purecounter-start="0"
									data-purecounter-end="85" data-purecounter-duration="1"
									class="purecounter"></span>

								<p>
									<strong>Doctors</strong> consequuntur quae qui deca rode
								</p>
								<a href="#">Find out more &raquo;</a>
							</div>
						</div>

						<div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
							<div class="count-box">
								<i class="far fa-hospital"></i> <span data-purecounter-start="0"
									data-purecounter-end="26" data-purecounter-duration="1"
									class="purecounter"></span>
								<p>
									<strong>Departments</strong> adipisci atque cum quia aut
									numquam delectus
								</p>
								<a href="#">Find out more &raquo;</a>
							</div>
						</div>

						<div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
							<div class="count-box">
								<i class="fas fa-flask"></i> <span data-purecounter-start="0"
									data-purecounter-end="14" data-purecounter-duration="1"
									class="purecounter"></span>
								<p>
									<strong>Research Lab</strong> aut commodi quaerat. Aliquam
									ratione
								</p>
								<a href="#">Find out more &raquo;</a>
							</div>
						</div>

						<div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
							<div class="count-box">
								<i class="fas fa-award"></i> <span data-purecounter-start="0"
									data-purecounter-end="150" data-purecounter-duration="1"
									class="purecounter"></span>
								<p>
									<strong>Awards</strong> rerum asperiores dolor molestiae
									doloribu
								</p>
								<a href="#">Find out more &raquo;</a>
							</div>
						</div>

					</div>

				</div>
			</section>
			<!-- End Counts Section -->

			<!-- ======= Features Section ======= -->
			<section id="features" class="features">
				<div class="container" data-aos="fade-up">

					<div class="row">
						<div class="col-lg-6 order-2 order-lg-1" data-aos="fade-right">
							<div class="icon-box mt-5 mt-lg-0">
								<i class="bx bx-receipt"></i>
								<h4>Est labore ad</h4>
								<p>Consequuntur sunt aut quasi enim aliquam quae harum
									pariatur laboris nisi ut aliquip</p>
							</div>
							<div class="icon-box mt-5">
								<i class="bx bx-cube-alt"></i>
								<h4>Harum esse qui</h4>
								<p>Excepteur sint occaecat cupidatat non proident, sunt in
									culpa qui officia deserunt</p>
							</div>
							<div class="icon-box mt-5">
								<i class="bx bx-images"></i>
								<h4>Aut occaecati</h4>
								<p>Aut suscipit aut cum nemo deleniti aut omnis. Doloribus
									ut maiores omnis facere</p>
							</div>
							<div class="icon-box mt-5">
								<i class="bx bx-shield"></i>
								<h4>Beatae veritatis</h4>
								<p>Expedita veritatis consequuntur nihil tempore laudantium
									vitae denat pacta</p>
							</div>
						</div>
						<div class="image col-lg-6 order-1 order-lg-2"
							style='background-image: url("assets/user/img/features.jpg");'
							data-aos="zoom-in"></div>
					</div>

				</div>
			</section>
			<section id="services" class="services services">
				<div class="container" data-aos="fade-up">

					<div class="section-title">
						<h2>Services</h2>
						<p>Magnam dolores commodi suscipit. Necessitatibus eius
							consequatur ex aliquid fuga eum quidem. Sit sint consectetur
							velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit
							suscipit alias ea. Quia fugiat sit in iste officiis commodi
							quidem hic quas.</p>
					</div>

					<div class="row">
						<div class="col-lg-4 col-md-6 icon-box" data-aos="zoom-in"
							data-aos-delay="100">
							<div class="icon">
								<i class="fas fa-heartbeat"></i>
							</div>
							<h4 class="title">
								<a href="">Lorem Ipsum</a>
							</h4>
							<p class="description">Voluptatum deleniti atque corrupti
								quos dolores et quas molestias excepturi sint occaecati
								cupiditate non provident</p>
						</div>
						<div class="col-lg-4 col-md-6 icon-box" data-aos="zoom-in"
							data-aos-delay="200">
							<div class="icon">
								<i class="fas fa-pills"></i>
							</div>
							<h4 class="title">
								<a href="">Dolor Sitema</a>
							</h4>
							<p class="description">Minim veniam, quis nostrud
								exercitation ullamco laboris nisi ut aliquip ex ea commodo
								consequat tarad limino ata</p>
						</div>
						<div class="col-lg-4 col-md-6 icon-box" data-aos="zoom-in"
							data-aos-delay="300">
							<div class="icon">
								<i class="fas fa-hospital-user"></i>
							</div>
							<h4 class="title">
								<a href="">Sed ut perspiciatis</a>
							</h4>
							<p class="description">Duis aute irure dolor in reprehenderit
								in voluptate velit esse cillum dolore eu fugiat nulla pariatur</p>
						</div>
						<div class="col-lg-4 col-md-6 icon-box" data-aos="zoom-in"
							data-aos-delay="100">
							<div class="icon">
								<i class="fas fa-dna"></i>
							</div>
							<h4 class="title">
								<a href="">Magni Dolores</a>
							</h4>
							<p class="description">Excepteur sint occaecat cupidatat non
								proident, sunt in culpa qui officia deserunt mollit anim id est
								laborum</p>
						</div>
						<div class="col-lg-4 col-md-6 icon-box" data-aos="zoom-in"
							data-aos-delay="200">
							<div class="icon">
								<i class="fas fa-wheelchair"></i>
							</div>
							<h4 class="title">
								<a href="">Nemo Enim</a>
							</h4>
							<p class="description">At vero eos et accusamus et iusto odio
								dignissimos ducimus qui blanditiis praesentium voluptatum
								deleniti atque</p>
						</div>
						<div class="col-lg-4 col-md-6 icon-box" data-aos="zoom-in"
							data-aos-delay="300">
							<div class="icon">
								<i class="fas fa-notes-medical"></i>
							</div>
							<h4 class="title">
								<a href="">Eiusmod Tempor</a>
							</h4>
							<p class="description">Et harum quidem rerum facilis est et
								expedita distinctio. Nam libero tempore, cum soluta nobis est
								eligendi</p>
						</div>
					</div>

				</div>
			</section>
			<!-- End Services Section -->

			<!-- ======= Appointment Section ======= -->
			<section id="appointment" class="appointment section-bg">
				<div class="container" data-aos="fade-up">

					<div class="section-title">
						<h2>Make an Appointment</h2>
						<p>Magnam dolores commodi suscipit. Necessitatibus eius
							consequatur ex aliquid fuga eum quidem. Sit sint consectetur
							velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit
							suscipit alias ea. Quia fugiat sit in iste officiis commodi
							quidem hic quas.</p>
					</div>

					<form action="forms/appointment.php" method="post" role="form"
						class="php-email-form" data-aos="fade-up" data-aos-delay="100">
						<div class="row">
							<div class="col-md-4 form-group">
								<input type="text" name="name" class="form-control" id="name"
									placeholder="Your Name" required>
							</div>
							<div class="col-md-4 form-group mt-3 mt-md-0">
								<input type="email" class="form-control" name="email" id="email"
									placeholder="Your Email" required>
							</div>
							<div class="col-md-4 form-group mt-3 mt-md-0">
								<input type="tel" class="form-control" name="phone" id="phone"
									placeholder="Your Phone" required>
							</div>
						</div>
						<div class="row">
							<div class="col-md-4 form-group mt-3">
								<input type="datetime" name="date"
									class="form-control datepicker" id="date"
									placeholder="Appointment Date" required>
							</div>
							<div class="col-md-4 form-group mt-3">
								<select name="department" id="department" class="form-select">
									<option value="">Select Department</option>
									<option value="Department 1">Department 1</option>
									<option value="Department 2">Department 2</option>
									<option value="Department 3">Department 3</option>
								</select>
							</div>
							<div class="col-md-4 form-group mt-3">
								<select name="doctor" id="doctor" class="form-select">
									<option value="">Select Doctor</option>
									<option value="Doctor 1">Doctor 1</option>
									<option value="Doctor 2">Doctor 2</option>
									<option value="Doctor 3">Doctor 3</option>
								</select>
							</div>
						</div>

						<div class="form-group mt-3">
							<textarea class="form-control" name="message" rows="5"
								placeholder="Message (Optional)"></textarea>
						</div>
						<div class="my-3">
							<div class="loading">Loading</div>
							<div class="error-message"></div>
							<div class="sent-message">Your appointment request has been
								sent successfully. Thank you!</div>
						</div>
						<div class="text-center">
							<button type="submit">Make an Appointment</button>
						</div>
					</form>

				</div>
			</section>
			<!-- End Appointment Section -->

			<!-- ======= Departments Section ======= -->
			<section id="departments" class="departments">
				<div class="container" data-aos="fade-up">

					<div class="section-title">
						<h2>KHOA</h2>
					</div>

					<div class="row" data-aos="fade-up" data-aos-delay="100">
						<div class="col-lg-4 mb-5 mb-lg-0">
							<ul class="nav nav-tabs flex-column">
								<li class="nav-item"><a class="nav-link active show"
									data-bs-toggle="tab" data-bs-target="#tab-1">
										<h4>Khoa 1</h4>
								</a></li>
								<li class="nav-item mt-2"><a class="nav-link"
									data-bs-toggle="tab" data-bs-target="#tab-2">
										<h4>Khoa 2</h4>

								</a></li>
								<li class="nav-item mt-2"><a class="nav-link"
									data-bs-toggle="tab" data-bs-target="#tab-3">
										<h4>khoa 3</h4>

								</a></li>
							</ul>
						</div>
						<div class="col-lg-8">
							<div class="tab-content">
								<div class="tab-pane active show" id="tab-1">
									<h3>Cardiology</h3>
									<ul>
										<li>Bac si 1</li>
										<li>Bac si 1</li>
									</ul>
								</div>
							</div>

						</div>
					</div>

				</div>
			</section>
			<!-- End Departments Section -->


			<!-- End Testimonials Section -->

			<!-- ======= Doctors Section ======= -->
			<section id="doctors" class="doctors section-bg">
				<div class="container" data-aos="fade-up">

					<div class="section-title">
						<h2>Thong tin</h2>
						<input type="text">
						<button type="submit">Search</button>
					</div>
					<div class="row">

						<div class="col-lg-3 col-md-6 d-flex align-items-stretch">
							<div class="member" data-aos="fade-up" data-aos-delay="100">
								<div class="member-img">
									<img src="assets/user/img/doctors/doctors-1.jpg"
										class="img-fluid" alt="">
									<div class="social">
										<a href=""><i class="bi bi-twitter"></i></a> <a href=""><i
											class="bi bi-facebook"></i></a> <a href=""><i
											class="bi bi-instagram"></i></a> <a href=""><i
											class="bi bi-linkedin"></i></a>
									</div>
								</div>
								<div class="member-info">
									<h4>Walter White</h4>
									<span>Chief Medical Officer</span>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-6 d-flex align-items-stretch">
							<div class="member" data-aos="fade-up" data-aos-delay="100">
								<div class="member-img">
									<img src="assets/user/img/doctors/doctors-1.jpg"
										class="img-fluid" alt="">
									<div class="social">
										<a href=""><i class="bi bi-twitter"></i></a> <a href=""><i
											class="bi bi-facebook"></i></a> <a href=""><i
											class="bi bi-instagram"></i></a> <a href=""><i
											class="bi bi-linkedin"></i></a>
									</div>
								</div>
								<div class="member-info">
									<h4>Walter White</h4>
									<span>Chief Medical Officer</span>
								</div>
							</div>
						</div>

						<div class="col-lg-3 col-md-6 d-flex align-items-stretch">
							<div class="member" data-aos="fade-up" data-aos-delay="200">
								<div class="member-img">
									<img src="assets/user/img/doctors/doctors-2.jpg"
										class="img-fluid" alt="">
									<div class="social">
										<a href=""><i class="bi bi-twitter"></i></a> <a href=""><i
											class="bi bi-facebook"></i></a> <a href=""><i
											class="bi bi-instagram"></i></a> <a href=""><i
											class="bi bi-linkedin"></i></a>
									</div>
								</div>
								<div class="member-info">
									<h4>Sarah Jhonson</h4>
									<span>Anesthesiologist</span>
								</div>
							</div>
						</div>

						<div class="col-lg-3 col-md-6 d-flex align-items-stretch">
							<div class="member" data-aos="fade-up" data-aos-delay="300">
								<div class="member-img">
									<img src="assets/user/img/doctors/doctors-3.jpg"
										class="img-fluid" alt="">
									<div class="social">
										<a href=""><i class="bi bi-twitter"></i></a> <a href=""><i
											class="bi bi-facebook"></i></a> <a href=""><i
											class="bi bi-instagram"></i></a> <a href=""><i
											class="bi bi-linkedin"></i></a>
									</div>
								</div>
								<div class="member-info">
									<h4>William Anderson</h4>
									<span>Cardiology</span>
								</div>
							</div>
						</div>

						<div class="col-lg-3 col-md-6 d-flex align-items-stretch">
							<div class="member" data-aos="fade-up" data-aos-delay="400">
								<div class="member-img">
									<img src="assets/user/img/doctors/doctors-4.jpg"
										class="img-fluid" alt="">
									<div class="social">
										<a href=""><i class="bi bi-twitter"></i></a> <a href=""><i
											class="bi bi-facebook"></i></a> <a href=""><i
											class="bi bi-instagram"></i></a> <a href=""><i
											class="bi bi-linkedin"></i></a>
									</div>
								</div>
								<div class="member-info">
									<h4>Amanda Jepson</h4>
									<span>Neurosurgeon</span>
								</div>
							</div>
						</div>

					</div>

				</div>
			</section>
			<!-- End Doctors Section -->




			<!-- ======= Contact Section ======= -->
			<section id="contact" class="contact">
				<div class="container">

					<div class="section-title">
						<h2>Contact</h2>
						<p>Magnam dolores commodi suscipit. Necessitatibus eius
							consequatur ex aliquid fuga eum quidem. Sit sint consectetur
							velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit
							suscipit alias ea. Quia fugiat sit in iste officiis commodi
							quidem hic quas.</p>
					</div>

				</div>



				<div class="container">

					<div class="row mt-5">

						<div class="col-lg-6">

							<div class="row">
								<div class="col-md-12">
									<div class="info-box">
										<i class="bx bx-map"></i>
										<h3>Our Address</h3>
										<p>A108 Adam Street, New York, NY 535022</p>
									</div>
								</div>
								<div class="col-md-6">
									<div class="info-box mt-4">
										<i class="bx bx-envelope"></i>
										<h3>Email Us</h3>
										<p>
											info@example.com<br>contact@example.com
										</p>
									</div>
								</div>
								<div class="col-md-6">
									<div class="info-box mt-4">
										<i class="bx bx-phone-call"></i>
										<h3>Call Us</h3>
										<p>
											+1 5589 55488 55<br>+1 6678 254445 41
										</p>
									</div>
								</div>
							</div>

						</div>

						<div class="col-lg-6">
							<form action="forms/contact.php" method="post" role="form"
								class="php-email-form">
								<div class="row">
									<div class="col-md-6 form-group">
										<input type="text" name="name" class="form-control" id="name"
											placeholder="Your Name" required="">
									</div>
									<div class="col-md-6 form-group mt-3 mt-md-0">
										<input type="email" class="form-control" name="email"
											id="email" placeholder="Your Email" required="">
									</div>
								</div>
								<div class="form-group mt-3">
									<input type="text" class="form-control" name="subject"
										id="subject" placeholder="Subject" required="">
								</div>
								<div class="form-group mt-3">
									<textarea class="form-control" name="message" rows="7"
										placeholder="Message" required=""></textarea>
								</div>
								<div class="my-3">
									<div class="loading">Loading</div>
									<div class="error-message"></div>
									<div class="sent-message">Your message has been sent.
										Thank you!</div>
								</div>
								<div class="text-center">
									<button type="submit">Send Message</button>
								</div>
							</form>
						</div>

					</div>

				</div>
			</section>
	</jsp:attribute>

</layout:user>

