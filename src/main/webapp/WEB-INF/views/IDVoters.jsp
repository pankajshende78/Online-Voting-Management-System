<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<%@ page isELIgnored="false"%>
<%@include file="./base.jsp"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<title>View Voter List</title>


</head>
<html>
<body>
<br>

<jsp:include page="AdNav.jsp"></jsp:include>
<br>

<div class="container mt-1">

		<div class="row">


			<div class="col-md 15">
<h1 class="text-center md-2 text-black">Voters List</h1>


				<table class="table text-black">
 <div class="col-md-9">
 						
                        
                        
                 
					<table class="table" id="myTable">
						<thead class="thead-light text-black">
							<tr >
								<th scope="col">ID</th>
								<th scope="col"> Name</th>
								<th scope="col"> Action</th>
								
							</tr>
						</thead>
						<tbody class="text-black">

							<c:forEach items="${viewvoter}" var="p">
								<tr>
									<th scope="row">${p.id}</th>
									<td>${p.name}</td>
									<td><a href="deletevoter/${p.id} "><i
											class="fas fa-trash text-danger" style="font-size: 25px"></i></a>
																		</td>

									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table> </table>
</div></div></div>




</body>
</html>