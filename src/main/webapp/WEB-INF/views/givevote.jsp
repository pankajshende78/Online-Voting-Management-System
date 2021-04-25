<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Verification</title>


<%@include file="./base.jsp"%>
  <style>
body  {
  background-image: url("assets/img/bg.png");
  background-color: #cccccc;
}
</style>


</head>


<body bgcolor="black"> 

<br>

	<div class="text-center">
		<nav class="navbar navbar-dark bg-primary">
			<div class="navbar-brand">Online Voting Managment</div>
	</div>
	</nav>
	</div>
<br><br>
<script>
		function validateform() {
			
			var name = document.myform.name.value;
			

			 if (name == null || name == "") {
				alert("ID can't be blank");
				return false;
			} 

		}
	</script>


	<div class="row">
		<div class="container-fluid">
			<div class="col-md-4 offset-md-4">

				<h1 class="text-center mb-4 text-white">Enter Your Voter ID</h1>
				<hr>

				<form action="checkid" method="post" name="myform"
					onsubmit="return validateform()">

					

					<div class="form-group text-white">
						<label for="name">Enter Your Voter ID</label><input type="text"
							class="form-control" id="name" aria-describedbr="emailHelp"
							name="id" placeholder="EnterID Here">
					</div>
					

					<div class="container text-center">



						<button type="submit" class="btn btn-primary">verify</button>
						<button type="reset" class="btn btn-primary">Reset</button>
					</div>

				</form>

				<br>
	<div class="container text-center text-danger" >

		<h4>Note : Yor Are Only Eligible To Vote Onces.</h4>
	</div>
 <br>

				<div class="container text-right" align="right">

					<a href="userlogin" class="btn btn-danger">Back</a> <br>
					<br>



				</div>


			</div>
		</div>
	</div>




</body>
</html>