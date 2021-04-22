<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Give Vote</title>


<%@ page isELIgnored="false"%>

<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">


  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  
 <link href="assets/css/login_style.css" rel="stylesheet">
 
 
 <script src=
"https://code.jquery.com/jquery-1.12.4.min.js">
    </script>

<style>
body  {
  background-image: url("assets/img/bg.png");
  background-color: #cccccc;
}
</style>



</head>
<body bgcolor="pink">
	<script>
		function validateform() {
			var id = document.myform.id.value;

			if (id == null || id == "") {
				alert("Voter ID can't be blank");
				return false;
			}

		}
	</script>
	
	




	<br>
	<header id="header" class="fixed-top ">
    <div class="container-fluid d-flex align-items-center justify-content-between">

      

 		
		 <a href="homepage" class="get-started-btn scrollto">Logout</a>
		 

    </div>
  </header>
	<br><br><br><br>

<div class="row">
		<div class="container-fluid">
			<div class="col-md-4 offset-md-4">

				<h1 class="text-center mb-4 text-white">Please Enter Voter ID </h1>
				<hr>

				<form action="checkid" method="post" name="myform"
					onsubmit="return validateform()">

					<div class="form-group">
						<label for="name" class="text-white">Enter Your Voter ID</label><input type="email"
							class="form-control" id="name" aria-describedbr="emailHelp"
							name="email" placeholder="Enter Your ID Here">
					</div>


					<div class="container text-center">



						<button type="submit" class="btn btn-primary">Verify</button>
						<button type="reset" class="btn btn-primary">Reset</button>
					</div>

				</form>
</div> </div> </div>

	<br>
	<div class="container text-center text-danger" >

		<h4>Note : Yor Are Only Eligible To Vote Onces.</h4>
	</div>
 <br>
	<div class="container text-right" >

		<a href="userlogin" class="btn btn-danger">Back </a> <br>
	</div>
 
</body>
	
</html>