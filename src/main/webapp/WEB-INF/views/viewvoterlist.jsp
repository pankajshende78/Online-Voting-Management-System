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
</head>
<html>
<body>

<br>
<jsp:include page="UserNav.jsp"></jsp:include>
<hr>


<div class="container mt-1">

		<div class="row">


			<div class="col-md 15">
<h1 class="text-center md-2">Voters</h1>
				<table class="table">


					<table class="table">
						<thead class="thead-light">
							<tr>
								<th scope="col">ID</th>
								<th scope="col"> Name</th>
								
							</tr>
						</thead>
						<tbody>

							<c:forEach items="${viewvoter}" var="p">
								<tr>
									<th scope="row">${p.id}</th>
									<td>${p.name}</td>
									

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