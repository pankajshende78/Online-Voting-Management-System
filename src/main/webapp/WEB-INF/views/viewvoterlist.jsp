<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<%@ page isELIgnored="false"%>
<%@include file="./base.jsp"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<title>Insert title here</title>

<style>
body  {
  background-image: url("assets/img/stefan-moertl-DkEJKHwgxKw-unsplash.jpg");
  background-color: #cccccc;
}
</style>
</head>
<html>
<body>
<br>
<div class="text-center">
		<nav class="navbar navbar-dark bg-secondary ">
			<div class="navbar-brand">Online Voting Managment</div>
	</div>
	</nav>
	</div><br>


<div class="container mt-1">

		<div class="row">


			<div class="col-md 15">
<h1 class="text-center md-2 text-white">Voters</h1>
				<table class="table">


					<table class="table">
						<thead class="thead-light">
							<tr>
								<th scope="col">ID</th>
								<th scope="col"> Name</th>
								
							</tr>
						</thead>
						<tbody class="text-white">

							<c:forEach items="${viewvoter}" var="p">
								<tr>
									<th scope="row">${p.id}</th>
									<td>${p.name}</td>
									

									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table> </table>
</div></div></div>

<div class="container">

				<a href="givevote" class="btn btn-primary">Give vote</a> </div>

<div class="container text-right" align="right">

				<a href="userlogin" class="btn btn-outline-danger">Back</a> </div>

</body>
</html>