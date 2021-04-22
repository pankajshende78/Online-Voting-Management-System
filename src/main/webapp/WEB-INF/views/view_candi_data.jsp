<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>view Candidate </title>
<%@ page isELIgnored="false"%>
<%@include file="./base.jsp"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>
<br>

	<jsp:include page="AdNav.jsp"></jsp:include>



	<div class="container mt-1">

		<div class="row">


			<div class="col-md-10 ">
				<h1 class="text-center md-2">Candidates</h1>
				<table class="table">

					<table class="table table-center">
						<thead class="thead-light">
							<tr>
								<th scope="col">ID</th>
								<th scope="col">Name</th>
								<th scope="col">phone</th>
								<th scope="col">topic</th>
								<th scope="col">Action</th>
							</tr>
						</thead>
						<tbody>
							<form action="voteing" method="post">

								<c:forEach items="${c}" var="p">
									<tr>
										<th scope="row">${p.candidateid}</th>
										<td>${p.name}</td>
										<td>${p.phone} </td>
										<td>${p.topic} </td>
										<td>
										<a href="delete/${p.id} "><i
											class="fas fa-trash text-danger" style="font-size: 25px"></i></a>
										<a href="update/${p.id} "><i
											class="fas fa-pen-nib text-primary" style="font-size: 25px"></i></a>
										
										 </td>
									</tr>

								</c:forEach>
							</form>
						</tbody>
					</table>
					</div>

					</div>




					<div>
</body>
</html>