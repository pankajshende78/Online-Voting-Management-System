<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Candidate Data</title>
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
				<h1 class="text-center md-2">Candidate Details</h1>
				<table class="table">


					<table class="table">
						<thead class="thead-light">
							<tr>
								<th scope="col">ID</th>
								<th scope="col">Name</th>
								
								<th scope="col">Action</th>

							</tr>
						</thead>
						<tbody>

							<c:forEach items="${list}" var="p">
								<tr>
									<th scope="row">${p.id}</th>
									<td>${p.name}</td>
									
									<td><a href="deletecandi/${p.id} "><i
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