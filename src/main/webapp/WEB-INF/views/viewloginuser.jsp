<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Users</title>
<%@ page isELIgnored="false"%>
<%@include file="./base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>
	<br>


	<jsp:include page="AdNav.jsp"></jsp:include>
	<div class="container mt-1">

		<div class="row">


			<div class="col-md 15">
				<h1 class="text-center md-2">Login User</h1>
				<table class="table">


					<table class="table">
						<thead class="thead-light">
							<tr>
								<th scope="col">ID</th>
								<th scope="col">Name</th>
								<th scope="col">Email</th>
								<th scope="col">Password</th>
								<th scope="col">Action</th>

							</tr>
						</thead>
						<tbody>

							<c:forEach items="${newlogdata}" var="p">
								<tr>
									<th scope="row">${p.id}</th>
									<td>${p.name}</td>
									<td>${p.email}</td>
									<td>${p.password}</td>
									<td><a href="deletelogin/${p.id} "><i
											class="fas fa-trash text-danger" style="font-size: 25px"></i></a>
									</td>


									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>




					</div>

					</div>



					</div>
</body>
</html>