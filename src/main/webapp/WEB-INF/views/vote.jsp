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

	<form action="voteing" method="post">

		<c:forEach items="${list}" var="p">

			<div class="container">
				<div class="row">
					<div class="col-lg-8 mb-4">
						<div class="card">
							<div class="card-body">
								<h5 class="card-title">${p.candidateid}</h5>
								<p class="card-text">${p.name}</p>
								<button type="submit" name="name" value="${p.name}"
									class="btn btn-danger">Give Vote</button>

							</div>
						</div>
					</div>
				</div>
			</div>
			</div>
		</c:forEach>

	</form>

	<br>
	<div class="container text-right" align="right">

		<a href="givevote" class="btn btn-outline-danger">Back </a> <br>
	</div>




	<div>
</body>
</html>