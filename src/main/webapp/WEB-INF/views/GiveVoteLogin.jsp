<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Verification</title>
  <style>
body  {
  background-image: url("assets/img/stefan-moertl-DkEJKHwgxKw-unsplash.jpg");
  background-color: #cccccc;
}
</style>


<%@include file="./base.jsp"%>
</head>


<body>

<br>

	<div class="text-center">
		<nav class="navbar navbar-dark bg-warning">
			<div class="navbar-brand ">Online Voting Managment</div>
	</div>
	</nav>
	</div>
<br><br>
<script>
		function validateform() {
			
			var name = document.myform.name.value;
			

			 if (name == null || name == "") {
				alert("Email can't be blank");
				return false;
			} 

		}
	</script>


	<div class="row">
		<div class="container-fluid">
			<div class="col-md-4 offset-md-4">

				<h1 class="text-center mb-4 text-white">Enter Your Valid Email ID</h1>
				<hr>

				<form action="checkid" method="post" name="myform"
					onsubmit="return validateform()">

					

					<div class="form-group text-white">
						<label for="name">Enter Your Email ID</label><input type="text"
							class="form-control" id="name" aria-describedbr="emailHelp"
							name="email" placeholder="Enter Email Here">
					</div>
					

					<div class="container text-center">



						<button type="submit" class="btn btn-primary">verify</button>
						<button type="reset" class="btn btn-primary">Reset</button>
					</div>

				</form>

				<br> <br> <br>

				<div class="container text-right" align="right">

					<a href="userlogin" class="btn btn-danger">Back</a> <br>
					<br>



				</div>


			</div>
		</div>
	</div>




</body>
</html>