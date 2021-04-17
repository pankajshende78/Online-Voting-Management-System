<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Candidate</title>
<%@include file="./base.jsp"%>
</head>
<body bgcolor="">
	<script>
		function validateform() {
			var candidateid = document.myform.candidateid.value;
			var topic = document.myform.topic.value;
			var email = document.myform.email.value;
			var name = document.myform.name.value;
			var phone = document.myform.phone.value;

			if (candidateid == null || candidateid == "") {
				alert("Candidate id can't be blank");
				return false;
			} else if (topic == null || topic == "") {
				alert("Topic can't be blank");
				return false;
			} else if (name == null || name == "") {
				alert("Name can't be blank");
				return false;
			} else if (phone == null || phone == "") {
				alert("Phone can't be blank");
				return false;
			}

		}
	</script>
	<br>

	<jsp:include page="AdminNav.jsp"></jsp:include>




	<div class="row">
		<div class="container-fluid">
			<div class="col-md-4 offset-md-4">

				<h1 class="text-center mb-4">New Candidate</h1>
				<hr>

				<form action="savecandidate" method="post" name="myform"
					onsubmit="return validateform()">

					<div class="form-group">
						<label for="name">Enter Election ID</label><input type="text"
							class="form-control" id="name" aria-describedbr="emailHelp"
							name="candidateid" placeholder="Enter Election ID Here">
					</div>

					<div class="form-group">
						<label for="name">Enter Name</label><input type="text"
							class="form-control" id="name" aria-describedbr="emailHelp"
							name="name" placeholder="Enter Name Here">
					</div>
					<div class="form-group">
						<label for="password">Enter Phone Number</label><input type="text"
							class="form-control" id="phone" name="phone"
							placeholder="Enter Phone Number Here">
					</div>
					<div class="form-group">
						<label for="name">Enter ELection Topic</label>
						<textarea type="text" class="form-control" id="name"
							aria-describedbr="emailHelp" name="topic"
							placeholder="Enter Topic Here"> </textarea>
					</div>


					<div class="container text-center">



						<button type="submit" class="btn btn-primary">Submit</button>
						<button type="reset" class="btn btn-primary">Reset</button>
					</div>

				</form>

				<br> <br> <br>

				<div class="container text-right" align="right">

					<a href="adminpage" class="btn btn-outline-danger">Back</a> <br>
					<br>



				</div>


			</div>
		</div>
	</div>





</body>
</html>