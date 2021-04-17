<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Registration From</title>

<%@include file="./base.jsp"%>


<style>
body {
	background-image:
		url("assets/img/stefan-moertl-DkEJKHwgxKw-unsplash.jpg");
	background-color: #cccccc;
}
</style>
</head>
<body bgcolor="pink">
	<script>
	
		function myfunction() {

			var email = document.myform.email.value;
			var phone= document.myform.password.phone;
			var password = document.myform.password.value;
			var repassword = document.myform.repassword.value;

			if (email == null || email == "") {
				alert("Email id can't be blank");
				return false;
			} else if (password == null || password == "") {
				alert("Password can't be blank");
				return false;
			} else if (repassword == null || repassword == "") {
				alert("Repassword can't be blank");
				return false;
			}
			else{
				alert("Submit");
				return true;			
				}		

		}
	</script>
	<br>

	<div class="text-center">
		<nav class="navbar navbar-dark bg-secondary ">
			<div class="navbar-brand">Online Voting Managment</div>
	</div>
	</nav>
	</div>




	<hr>
	<div class="row">
		<div class="col-md-5 offset-md-3 ">
			<h1 class="text-center mb-3 text-white ">New Registration Form</h1>
			<hr>
			<br>
			<form action="savenewregister" method="post" name="myform"
				onsubmit="return myfunction()">
				<div class="form-group">
					<label for="name" class="text-white">Name</label><input type="text"
						class="form-control" id="name" aria-describedbr="emailHelp"
						name="name" placeholder="Enter Your Name Here">
				</div>

				<div class="form-group">
					<label for="name" class="text-white">Username</label><input
						type="email" class="form-control" id="name"
						aria-describedbr="emailHelp" name="email"
						placeholder="Enter Email ID Here">
				</div>
				<div class="form-group">
					<label for="name" class="text-white">Phone Number</label><input
						type="text" class="form-control" id="name"
						aria-describedbr="emailHelp" name="phone"
						placeholder="Enter Phone Number Here">
				</div>


				<div class="form-group">
					<label for="password" class="text-white">Password</label><input
						type="password" class="form-control" id="password" name="password"
						placeholder="Enter Password Here">
				</div>

				<div class="form-group">
					<label for="password" class="text-white">Repassword</label><input
						type="password" class="form-control" id="repassword"
						name="repassword" placeholder="Enter Repassword Here">
				</div>


				<div class="container text-center">



					<button type="submit" class="btn btn-primary">Submit</button>
					<button type="reset" class="btn btn-primary">Reset</button>

				</div>

			</form>
			<div class="container text-right" align="right">

				<a href="b" class="btn btn-outline-danger">Back</a>
			</div>
			<br>
			
</body>
</html>