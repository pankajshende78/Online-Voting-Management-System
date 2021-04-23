<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Verification</title>


  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">


  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">

  
  <link href="assets/css/style.css" rel="stylesheet">


<style>
body  {
  background-image: url("assets/img/stefan-moertl-DkEJKHwgxKw-unsplash.jpg");
  background-color: #cccccc;
}
</style>

</head>
<body bgcolor="pink">
<br>
<script>
		function validateform() {
		
			var name = document.myform.name.value;
			

			
			} if (name == null || name == "") {
				alert("Email can't be blank");
				return false;
			} 

		}

		
	</script>
	
	
  <header id="header" class="fixed-top ">
    <div class="container-fluid d-flex align-items-center justify-content-between">

      <h1 class="logo"><a href="b">The Vote</a></h1>
     

     <nav class="nav-menu d-none d-lg-block">
				<ul>
					<li ><a href="userlogin">Home</a></li>

					<li><a href="Givevotelogin">Give Vote</a></li>
					
						<li class="active"><a href="contact">Contact</a></li>

				</ul>
			</nav>

     
 		
		 <a href="homepage" class="get-started-btn scrollto">Login</a>
		 

    </div>
  </header>

			
<br>

<div class="row">
		<div class="container-fluid">
			<div class="col-md-4 offset-md-4">

				<h1 class="text-center mb-4 text-white">Enter Your Vaild Email ID</h1>

				<form action="voters" method="post" name="myform"
					onsubmit="return validateform()">

				
					<div class="form-group text-white">
						<label for="email">Enter Your Email ID</label><input type="text"
							class="form-control" id="name" name="email"
							placeholder="Enter Email ID Here">
					</div>

					<div class="container text-center">



						<button type="submit" class="btn btn-primary" >verify</button>
						<button type="reset" class="btn btn-primary">Reset</button>
					</div>

				</form>



			</div>
			
		</div>
	</div>


</body>
</html>