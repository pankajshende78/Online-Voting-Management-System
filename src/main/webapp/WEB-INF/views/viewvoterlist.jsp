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

<div class="col-md-8.1 offset-md-9">

 <input type="text" id="myInput" onkeyup="myFunction()" class="form-control" placeholder="Search.."  >
</div>
				<table class="table">
 <div class="col-md-9">
 						
                        
                        
                        <script>
                            $(document).ready(function () {
                                $("#myInput").on("keyup", function () {
                                    var value = $(this).val().toLowerCase();
                                    $("#myTable tr").filter(function () {
                                        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                                    });
                                });
                            });
                        </script>
                    </div> 

					<table class="table" id="myTable">
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

				<a href="Givevotelogin" class="btn btn-primary">Give vote</a> </div>

<div class="container text-right" align="right">

				<a href="userlogin" class="btn btn-outline-danger">Back</a> </div>

</body>
</html>