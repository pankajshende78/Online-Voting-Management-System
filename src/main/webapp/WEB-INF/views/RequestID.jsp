<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Request For ID</title>
 <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">


  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">

  
  <link href="assets/css/style.css" rel="stylesheet">
 
<%@include file="./base.jsp"%>	 

  <style>
body  {
  background-image: url("assets/img/stefan-moertl-DkEJKHwgxKw-unsplash.jpg");
  background-color: #cccccc;
}
</style>

</head>
<body>
<br>
	<header id="header" class="fixed-top ">
    <div class="container-fluid d-flex align-items-center justify-content-between">

      <h1 class="logo"><a href="b">The Vote</a></h1>
     

   
		 <a href="userlogin" class="get-started-btn scrollto">Back</a>
		 

    </div>
  </header>
	
<br>
  <script>
  function showAlert() {
    var myText = "Thank you for contact us";
    alert (myText);
  }
  </script>


	
	
<div class="container mt-4" id="contact">
		
			

		
     <section class="mb-3">

			<h2 class="h1-responsive font-weight-bold text-center my-3 text-white">Request for voting ID</h2>

			
<br><br>
			<div class="row">


				<div class="col-md-7 mb-md-0 mb-5">
					<form action="request" method="POST">


						<div class="row">

							<div class="col-md-6">
								<div class="md-form mb-0 text-white">
									<label for="name" >Your name</label> <input
										type="text" placeholder="Enter Your Name" name="name"
										class="form-control">

								</div>
							</div>

							<div class="col-md-6">
								<div class="md-form mb-0 text-white">
									<label for="email">Your email</label> <input
										type="text" placeholder="Enter Email Id Here" name="email"
										class="form-control">

								</div>
							</div>


						</div>

						<div class="row">
							<div class="col-md-12">
								<div class="md-form mb-0 text-white">
									<label for="subject" >Mobile</label> <input
										type="text" placeholder="Enter mobile number Here" name="mobile"
										class="form-control">

								</div>
							</div>
						</div>

					
						<br>
						<div class="container text-center">



							<button type="submit" class="btn btn-primary" onclick="showAlert()">Send Request</button>
							<button type="reset" class="btn btn-primary">Reset</button>
						</div>


					</form>


					<div class="status"></div>
				</div>

				<div class="col-md-3 text-center">
					<ul class="list-unstyled mb-0">
						<li><i class="fas fa-map-marker-alt fa-2x text-white" ></i>
							<p class="text-white">Pankaj Shende</p></li>

						
							<p class="text-white" >Thane, India</p></li>

						
							<p class="text-white">Shendepankaj78@gmail.com</p></li>
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