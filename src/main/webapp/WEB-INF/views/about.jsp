<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="./base.jsp"%>
</head>
<body>
<br>




<jsp:include page="UserNav.jsp"></jsp:include><hr>


<div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1 class="display-4">About Voting Management System</h1>
    <p class="lead">Online Voting is a web-based voting system that will help you manage your elections easily and securely. This voting system can be used for casting votes during the elections held in colleges, etc. In this system the voter do not have to go to the polling booth to cast their vote. They can use their personal computer to cast their votes. There is a database which is maintained in which all the name of the voters with their complete information is stored. The System Administrator registers the voters by simply filling a registration form to register the voters. After registration, the voter is assigned a secret voter ID with which he/she can use to login to the system and cast his/her vote. If invalid/wrong details are submitted, then the person is not registered to vote. After the user successfully registers themselves, a link is sent on their respective E-mail IDs. The link is a key for the activation of the account of the user. The account is activated only after the user clicks on that link.The site will be activated only on the day of voting. Once the user logs in, they will be provided with a One Time Password (OTP) which has to be entered by the user before casting his/her vote. The password will be destroyed after casting of their respective vote. A receipt of the vote will be sent to the user on their respective E-mail IDs. The advantage of online voting is that the voters have the choice of voting at their own free time and there is reduced congestion. It also minimizes on errors of vote counting. The individual votes are submitted in a database which can be queried to find out who of the aspirants for a given post has the highest number of votes.</p>
  </div>
 </div>
 


</body>
</html>