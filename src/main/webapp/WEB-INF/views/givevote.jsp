<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<%@ page isELIgnored="false"%>
<%@include file="./base.jsp"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
	<jsp:include page="UserNav.jsp"></jsp:include><hr>



	<div class="row">
		<div class="col-md-4 offset-md-4">
			<h1 class="text-center mb-3">Please Enter Voter ID</h1>
			<hr>
			<br>
			<form action="checkid" method="post" name="myform"
				onsubmit="return validateform()">

				<div class="form-group">
					<label for="name">Enter Your Voter ID</label><input type="text"
						class="form-control" id="name" name="id"
						placeholder="Enter Voter ID Here">
				</div>
				<br>

				<div class="container text-center">



					<button type="submit" class="btn btn-primary">Verify</button>
					<button type="reset" class="btn btn-primary">Reset</button>
			</form>
		</div>
	</div>






	<br>
	<hr>

	<%-- <div class="container mt-3">

		<div class="row">
			<div class="col-md 15">
				<h1 class="text-center md-7">Candidate Details</h1>
				<table class="table">


					<table class="table">
						<thead class="thead-light">
							<tr>
								<th scope="col">Candidate ID</th>
								<th scope="col">ID</th>
								<th scope="col">Name</th>
								<th scope="col">PHONE</th>
								<th scope="col">TOPIC</th>

							</tr>
						</thead>
						<tbody>

							<c:forEach items="${usercandi}" var="p">
								<tr>
									<td>${p.id}</td>
									<th scope="row">${p.candidateid}</th>
									<td>${p.name}</td>
									<td>${p.phone}</td>
									<td>${p.topic}</td>



									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					</div>


					<div class="container text-right" align="right">

						<a href="userlogin" class="btn btn-outline-danger">Back</a> --%>
</body>
</html>