<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="./base.jsp"%>

</head>
<body bgcolor="pink">
<br>

	
	<jsp:include page="AdminNav.jsp"></jsp:include>
	



<div class="row">
		<div class="container-fluid" ">
			<div class="col-md-4 offset-md-4">

				<h1 class="text-center mb-4">Add Voters</h1>

				<form action="voters" method="post" name="myform"
					onsubmit="return validateform()">

					<div class="form-group">
						<label for="name">Enter Voter ID </label><input type="text"
							class="form-control" id="name" aria-describedbr="emailHelp"
							name="id" placeholder="Enter Voter ID Here">
					</div>


					<div class="form-group">
						<label for="password">Enter Name </label><input type="text"
							class="form-control" id="name" name="name"
							placeholder="Enter Name Here">
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