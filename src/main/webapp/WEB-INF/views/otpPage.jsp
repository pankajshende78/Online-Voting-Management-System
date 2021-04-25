<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>OTP page</title>

<%@include file="./base.jsp"%>
<style>
p {
	text-align: center;
	font-size: 30px;
	margin-top: 0px;
}
</style>
</head>
<body>

	<br>

	<div class="text-center">
		<nav class="navbar navbar-dark bg-warning">
			<div class="navbar-brand ">Online Voting Managment</div>
	</div>
	</nav>
	</div>
	<br>
	<br>


	<script>
		var countDownDate = new Date("Jan 5, 2022 15:37:25").getTime();

		var x = setInterval(function() {

			var now = new Date().getTime();

			var distance = countDownDate - now;

			var seconds = Math.floor((distance % (1000 * 30)) / 1000);

			document.getElementById("demo").innerHTML = seconds + "s ";

			if (seconds < 0) {
				clearInterval(x);
				document.getElementById("demo").innerHTML = "EXPIRED";
			}
		}, 1000);

		function validateform() {

			var name = document.myform.name.value;

			if (name == null || name == "") {
				alert("OTP can't be blank");
				return false;
			}

		}
	</script>


	<div class="row">
		<div class="container-fluid">
			<div class="col-md-4 offset-md-4">

				<h1 class="text-center mb-4">Enter Your OTP</h1>

				<p id="demo"></p>
				<form action="checkOtp" method="post" name="myform"
					onsubmit="return validateform()">



					<div class="form-group ">
						<label for="name">Enter OTP</label><input type="text"
							class="form-control" id="name" aria-describedbr="emailHelp"
							name="otp" placeholder="Enter OTP Here">
					</div>


					<div class="container text-center">



						<button type="submit" class="btn btn-primary">verify</button>
						<button type="reset" class="btn btn-primary">Reset</button>
					</div>

				</form>

				<br> <br> <br>

				<div class="container text-right" align="right">

					<a href="userlogin" class="btn btn-danger">Back</a> <br> <br>



				</div>


			</div>
		</div>
	</div>


</body>
</html>
