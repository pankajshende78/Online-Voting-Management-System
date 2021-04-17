<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<%@ page isELIgnored="false"%>
<%@include file="./base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>Result Page</title>
</head>
<body>
<br>
	
<jsp:include page="AdminNav.jsp"></jsp:include>






<div class="container mt-1">

		<div class="row">


			<div class="col-md 15">
				<h1 class="text-center md-2">Voting Result</h1>
				<table class="table">


					<table class="table">
						<thead class="thead-light">
							<tr>
									<th> </th>
								<th scope="col"> Name</th>
							
								
								
							</tr>
						</thead>
						<tbody>

							<c:forEach items="${view}" var="v">
								<tr>
								<td>${v.id}</td>
									<td>${v.name}</td>
									
								

									
								</tr>
							</c:forEach>
						</tbody>
					</table>




					</div>

					</div>



					</div>






</body>
</html>