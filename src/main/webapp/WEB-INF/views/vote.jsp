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
<link href="assets/css/Card.css" rel="stylesheet">
</head>
<body>

<!-- For demo purpose -->
<div class="container py-5">
    <div class="row text-center text-white">
        <div class="col-lg-8 mx-auto">
            <h1 class="display-4">Please Give Your Vote</h1>
           
        </div>
    </div>
</div><!-- End -->

	<div class="container text-right" >

		<a href="givevote" class="btn btn-warning">Back </a> <br>
	</div><br>


<form action="voteing" method="post">
<c:forEach items="${list}" var="p">
<div class="container">
    <div class="row text-center ">

        <!-- Team item -->
        <div class="col-xl-3 col-sm-6 mb-5">
            <div class="bg-white rounded shadow-sm py-5 px-4"><img src="./assets/img/voteimg.png" alt="" width="100" class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm">
              
               <h5 class="card-title">${p.candidateid}</h5>
								<p class="card-text">${p.name}</p>
								
								<button type="submit" name="name" value="${p.name}"
									class="btn btn-danger">Give Vote</button>
									<h5 class="mb-0">${p.topic}</h5><span class="small text-uppercase text-muted">${p.phone}</span>
            </div>
        </div>

       
    </div>
</div>
</c:forEach>
</form>
	<br>
	
</div>
	



	<div>
</body>
</html>