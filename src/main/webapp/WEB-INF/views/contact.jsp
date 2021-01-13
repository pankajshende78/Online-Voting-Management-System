<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
  <%@include file="./base.jsp"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	
	<br>
<jsp:include page="UserNav.jsp"></jsp:include>
	<hr>
<div class="container mt-4">

		<section class="mb-3">


			<h2 class="h1-responsive font-weight-bold text-center my-3">Contact
				us</h2>

			<p class="text-center w-responsive mx-auto mb-5">Do you have any
				questions? Please do not hesitate to contact us directly.</p>

			<div class="row">


				<div class="col-md-7 mb-md-0 mb-5">
					<form action="savecont" method="POST">


						<div class="row">

							<div class="col-md-6">
								<div class="md-form mb-0">
									<label for="name" >Your name</label> <input
										type="text" placeholder="Enter Your Name" name="name"
										class="form-control">

								</div>
							</div>

							<div class="col-md-6">
								<div class="md-form mb-0">
									<label for="email">Your email</label> <input
										type="text" placeholder="Enter Email Id Here" name="email"
										class="form-control">

								</div>
							</div>


						</div>

						<div class="row">
							<div class="col-md-12">
								<div class="md-form mb-0">
									<label for="subject" >Subject</label> <input
										type="text" placeholder="Enter Subject Here" name="subject"
										class="form-control">

								</div>
							</div>
						</div>

						<div class="row">


							<div class="col-md-12">

								<div class="md-form">
									<label for="message">Your message</label>
									<textarea type="text" name="message" rows="2"
										placeholder="Enter Your Message Here"
										class="form-control md-textarea"></textarea>

								</div>

							</div>
						</div>
						<br>
						<div class="container text-center">



							<button type="submit" class="btn btn-primary">Sent</button>
							<button type="reset" class="btn btn-primary">Reset</button>
						</div>


					</form>


					<div class="status"></div>
				</div>

				<div class="col-md-3 text-center">
					<ul class="list-unstyled mb-0">
						<li><i class="fas fa-map-marker-alt fa-2x"></i>
							<p>Pankaj Shende</p></li>

						<li><i class="fas fa-phone mt-4 fa-2x"></i>
							<p>+ 91 XXXXXX9121</p></li>

						<li><i class="fas fa-envelope mt-4 fa-2x"></i>
							<p>PankajShende@examle</p></li>
					</ul>
				</div>


			</div>

		</section>

	</div>


</body>
</html>