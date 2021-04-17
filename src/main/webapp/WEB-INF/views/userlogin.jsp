<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Online Voting System</title>
<meta content="" name="description">
<meta content="" name="keywords">


<link href="assets/img/favicon.png" rel="icon">
<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">


<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">


<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
<link href="assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
<link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="assets/vendor/aos/aos.css" rel="stylesheet">


<link href="assets/css/login_style.css" rel="stylesheet">

</head>

<body>

  <script>
  function showAlert() {
    var myText = "Thank you for contact us";
    alert (myText);
  }
  </script>


	<header id="header" class="fixed-top ">
		<div
			class="container-fluid d-flex align-items-center justify-content-between">

			<h1 class="logo">
				<a href="b">The Vote</a>
			</h1>


			<nav class="nav-menu d-none d-lg-block">
				<ul>
					<li class="active"><a href="#header">CheckName</a></li>

					<li><a href="Givevotelogin">Give Vote</a></li>
					<li><a href="#contact">Contact</a></li>

				</ul>
			</nav>


			<a href="homepage" class="get-started-btn scrollto">Logout</a>


		</div>
	</header>


	<section id="hero">
		<div class="hero-container" data-aos="fade-up" data-aos-delay="150">
			<h1>CHECK YOUR NAME IN VOTER LIST</h1>

			<div class="d-flex">
				<a href="viewvoterlist" class="btn-get-started scrollto">HERE </a>
			</div>
		</div>
	</section>
	
	<hr>
	
	<div class="container mt-4" id="contact">
		
			

		
     <section class="mb-3">

			<h2 class="h1-responsive font-weight-bold text-center my-3 text-black">Contact
				us</h2>

			<p class="text-center w-responsive mx-auto mb-5 text-black">Do you have any
				questions? Please do not hesitate to contact us directly.</p>

			<div class="row">


				<div class="col-md-7 mb-md-0 mb-5">
					<form action="savecont" method="POST">


						<div class="row">

							<div class="col-md-6">
								<div class="md-form mb-0 text-black">
									<label for="name" >Your name</label> <input
										type="text" placeholder="Enter Your Name" name="name"
										class="form-control">

								</div>
							</div>

							<div class="col-md-6">
								<div class="md-form mb-0 text-black">
									<label for="email">Your email</label> <input
										type="text" placeholder="Enter Email Id Here" name="email"
										class="form-control">

								</div>
							</div>


						</div>

						<div class="row">
							<div class="col-md-12">
								<div class="md-form mb-0 text-black">
									<label for="subject" >Subject</label> <input
										type="text" placeholder="Enter Subject Here" name="subject"
										class="form-control">

								</div>
							</div>
						</div>

						<div class="row">


							<div class="col-md-12">

								<div class="md-form text-black">
									<label for="message">Your message</label>
									<textarea type="text" name="message" rows="2"
										placeholder="Enter Your Message Here"
										class="form-control md-textarea"></textarea>

								</div>

							</div>
						</div>
						<br>
						<div class="container text-center">



							<button type="submit" class="btn btn-primary" onclick="showAlert()">Sent Message</button>
							<button type="reset" class="btn btn-primary">Reset</button>
						</div>


					</form>


					<div class="status"></div>
				</div>

				<div class="col-md-3 text-center">
					<ul class="list-unstyled mb-0">
						<li><i class="fas fa-map-marker-alt fa-2x text-black" ></i>
							<p class="text-black">Pankaj Shende</p></li>

						<li><i class="fas fa-phone mt-4 fa-2x text-black"></i>
							<p class="text-black" >Thane, India</p></li>

						<li><i class="fas fa-envelope mt-4 fa-2x text-black"></i>
							<p class="text-black">Shendepankaj78@gmail.com</p></li>
					</ul>
				</div>


			</div>

		</section>

	</div>
		</section>

	


	<footer id="footer">
	
    <div class="footer-copyright text-center py-3">2021 :
    <a href="b"> Devloped by pankaj shende</a> </div>
	
	 </footer>

	<a href="#" class="back-to-top"><i class="ri-arrow-up-line"></i></a>
	<div id="preloader"></div>


	<script src="assets/vendor/jquery/jquery.min.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
	<script src="assets/vendor/php-email-form/validate.js"></script>
	<script src="assets/vendor/waypoints/jquery.waypoints.min.js"></script>
	<script src="assets/vendor/counterup/counterup.min.js"></script>
	<script src="assets/vendor/venobox/venobox.min.js"></script>
	<script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
	<script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="assets/vendor/aos/aos.js"></script>


	<script src="assets/js/main.js"></script>

</body>

</html>