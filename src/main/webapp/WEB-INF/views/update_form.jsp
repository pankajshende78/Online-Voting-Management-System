<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Form</title>
<%@ page isELIgnored="false"%>
<%@include file="./base.jsp"%>
</head>
<body>

	<br>

	<jsp:include page="AdminNav.jsp"></jsp:include>

	<div class="row">
		<div class="container-fluid">
			<div class="col-md-4 offset-md-4">

				<h1 class="text-center mb-4">New Candidate</h1>
				<hr>

				<form action="savecandidate" method="post">

					<div class="form-group">
						<label for="name">Enter Election ID</label><input type="text"
							class="form-control" id="name" value="${candi.candidateid}"
							aria-describedbr="emailHelp" name="candidateid"
							placeholder="Enter Election ID Here">
					</div>

					<div class="form-group">
						<label for="name">Enter Name</label><input type="text"
							class="form-control" id="name" aria-describedbr="emailHelp"
							name="name" value="${candi.name}" placeholder="Enter Name Here">
					</div>
					<div class="form-group">
						<label for="password">Enter Phone Number</label><input type="text"
							class="form-control" value="${candi.phone }" id="phone"
							name="phone" placeholder="Enter Phone Number Here">
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



			</div>


		</div>
	</div>




</body>
</html>