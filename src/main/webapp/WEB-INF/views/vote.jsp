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
<body>
	<br>
	<div class="text-center">
		<nav class="navbar navbar-light bg-warning ">
			<div class="navbar-brand">Please Give Your Vote</div>
	</div>
	<hr>

	<div class="container mt-1">

		<div class="row">


			<div class="col-md-10 ">
				<h1 class="text-center md-2">Vote</h1>
				<table class="table">

					<table class="table table-center">
						<thead class="thead-light">
							<tr>
								<th scope="col">ID</th>
								<th scope="col">Name</th>

								<th scope="col">Vote</th>
							</tr>
						</thead>
						<tbody>
							<form action="voteing" method="post">

								<c:forEach items="${list}" var="p">
									<tr>
										<th scope="row">${p.candidateid}</th>
										<td>${p.name}</td>
										<td><button type="submit" name="name" value="${p.name}"
												class="btn btn-danger">Give Vote</button></td>
									</tr>

								</c:forEach>
							</form>
						</tbody>
					</table>




					</div>

					</div>








					<br>
					<div class="container text-right" align="right">

						<a href="givevote" class="btn btn-outline-danger">Back </a> <br>
					</div>




					<div>
					
					
					
					
					
					
					
					
					
</body>
</html>