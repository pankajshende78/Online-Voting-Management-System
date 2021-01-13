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
<body bgcolor="pink">
<script>
		function validateform() {
			var id = document.myform.id.value;
			

			if (id == null || id == "") {
				alert("filled can't be blank");
				return false;
			} 

		}
	</script>
	<br>
	<jsp:include page="UserNav.jsp"></jsp:include><hr>



	<div class="row">
		<div class="col-md-4 offset-md-4">
			<h1 class="text-center mb-3">Please Enter OTP...</h1>
			<hr>
			<br><br><br>
			<form action="checkid" method="post" name="myform"
				onsubmit="return validateform()">

				<div class="form-group">
					<label for="name">Enter Your OTP</label><input
						type="text" class="form-control" id="otp" name="otp"
						placeholder="Enter OTP Here">
				</div>
				<br>

				<div class="container text-center">

					<button type="submit" class="btn btn-primary">verify OTP</button>
					<button type="reset" class="btn btn-primary">Reset</button>

				</form>
		</div>
	</div>
           
           
	


</form>



<hr>



</body>
</html>