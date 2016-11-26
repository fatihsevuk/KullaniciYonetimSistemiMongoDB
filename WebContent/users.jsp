<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Kullanıcı Yönetim Sistemi</title>

<link rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="js/script.js"></script>

</head>
<body>
	<div class="social">

		<a href="twitter.com"> <img src="images/twitter.jpg" /></a> <a
			href="youtube.com"> <img src="images/youtube.jpg" /></a>


	</div>


	<div class="navigation">

		<ul class="nav">

			<li><a href="#">Home</a></li>
			<li><a href="#">Abut Us</a></li>
			<li><a href="#">Contact Us</a></li>
		</ul>


	</div>

	<header> <a href="#"><img src="images/logo.jpg"></a> </header>


	<h2 align="center">Kullanıcı Yönetim Sistemi</h2>
	
	<c:url var="addUserUrl" value="/addUser"></c:url>

	<div class="container">

		<div class="main" align="center">
			
			<c:if test="${requestScope.error ne null }">
			
				<strong style="color:red">
				
					<c:out value="${requestScope.error }"></c:out>
				
				</strong>
			
			
			</c:if>
			
			
			<c:if test="${requestScope.success ne null }">
			
				<strong style="color:green">
				
					<c:out value="${requestScope.success }"></c:out>
				
				</strong>
			
			
			</c:if>
			
			
			

			<form action='<c:out value="${addUserUrl}"></c:out>' method="post">


				Name:<input type="text" name="name"><br> 
				Email:<input type="text" name="emailId"><br>
				Password:<input type ="password" name="password"><br>
				<input type="submit" value="Add user">
			</form>

		</div>

	</div>









</body>
</html>