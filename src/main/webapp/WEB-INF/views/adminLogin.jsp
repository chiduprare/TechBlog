<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<c:url value="/css/login.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet">
<script src="/javascript/login.js"></script>


<meta charset="ISO-8859-1">
<title>The Blog</title>
</head>
<body>

	${errorKey}
	<div class="container" style="margin-bottom: 12rem">
		<nav>
			<input type="checkbox" id="nav" class="hidden"> <label
				for="nav" class="nav-btn"> <i></i> <i></i> <i></i>
			</label>
			<div class="logo">
				<a href="home"> TECH BLOG </a>

			</div>
			<div class="nav-wrapper">
				<ul>
					<!-- <li><a href="AdminLogin.html">Admin </a></li> -->
					
					<li><a href="enquiry">Query </a></li>
					<li><a href="aboutUS">AboutUs </a></li>
				</ul>
			</div>
		</nav>
	</div>
	
	
	
	<form class="login-box" name="loginform" onsubmit="return validate()"
		action="adminloginurl" method="POST">
		<h1>Admin Login</h1>
		<div class="textbox">
			<i class="fas fa-signature"></i> <input type="text"
				placeholder="Username" name="adminUsername">
		</div>

		<div class="textbox">
			<i class="fas fa-lock"></i> <input type="Password"
				placeholder="Password" name="adminPassword">
		</div>

		<input type="submit" class="btn" name="Sign In" value="Sign In"> 
	</form>
</body>
</html>