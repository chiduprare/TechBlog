<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<c:url value="/css/login.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
<body>

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
					<li><a href="adminLogin">Admin </a></li>
					<li><a href="aboutUS">AboutUs </a></li>
				</ul>
			</div>
		</nav>
	</div>

	<h2>${msg }</h2>
	<form class="login-box" name="queryform" onsubmit="return validate()"
		action="${pageContext.request.contextPath }/enquiry/send"
		method="POST">
		<h1>Query</h1>
		<div class="textbox">
			<i class="fas fa-signature"></i> <input type="text"
				placeholder="Name" name="name">
		</div>

		<div class="textbox">
			<i class="fas fa-mobile"></i> <input type="text"
				placeholder="MobileNo" name="email">
		</div>

		<div class="textbox">
			<i class="fas fa-envelope"></i> <input type="text"
				placeholder="Email" name="phone">
		</div>


		<div class="textbox">
			<i class="fas fa-question-circle"></i> <input type="text"
				placeholder="Query" name="query">
		</div>

		<br> <input type="submit" class="btn" name="send" value="Send">

	</form>


</body>
</html>