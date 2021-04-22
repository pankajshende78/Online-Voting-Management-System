<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Voters</title>
<%@include file="./base.jsp"%>

</head>
<body bgcolor="pink">
<br>
<script>
		function validateform() {
			var id = document.myform.id.value;
			var name = document.myform.name.value;
			

			if (id == null || id == "") {
				alert("Id can't be blank");
				return false;
			} else if (name == null || name == "") {
				alert("Name can't be blank");
				return false;
			} 

		}

		
	</script>
	
	<jsp:include page="AdNav.jsp"></jsp:include>
	



<div class="row">
		<div class="container-fluid">
			<div class="col-md-4 offset-md-4">

				<h1 class="text-center mb-4">Add Voters</h1>

				<form action="voters" method="post" name="myform"
					onsubmit="return validateform()">

					<div class="form-group">
						<label for="name">Enter Voter ID </label><input type="text"
							class="form-control" id="id" aria-describedbr="emailHelp"
							name="id" placeholder="Enter Voter ID Here">
					</div>


					<div class="form-group">
						<label for="password">Enter Name </label><input type="text"
							class="form-control" id="name" name="name"
							placeholder="Enter Name Here">
					</div>

					<div class="container text-center">



						<button type="submit" class="btn btn-primary" onclick="myfunction()">Submit</button>
						<button type="reset" class="btn btn-primary">Reset</button>
					</div>

				</form>



			</div>
			
		</div>
	</div>


</body>
</html>