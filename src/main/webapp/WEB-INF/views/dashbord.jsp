<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<c:url value="/css/login.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet">
</head>
<body>
	${ek}

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
					
					<li><a href="regi">Add Blog </a></li>
				</ul>
			</div>
		</nav>
	</div>


	
	<table border="1" align="center">
		<th>Blog_id</th>
		<th>BlogTitle</th>
		<th>BlogContent</th>
		<th>BlogAuthor</th>
		<th>BlogImage</th>
		<th>BlogDate</th>
		<th>BlogSlug</th>
		</tr>
		<c:forEach items="${listKey}" var="blog">
			<tr>
				<td>${blog.blogId}</td>
				<td><a href="singleblog/${blog.blogSlug}">${blog.blogTitle }</a></td>
				<td><span
					style="display: inline-block; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 50ch;">
						${blog.blogContent} </span></td>
				<td>${blog.blogAuthor}</td>
				<td>${blog.blogImage}</td>
				<td>${blog.blogDate}</td>
				<td>${blog.blogSlug}</td>
				<td><a href="edit/${blog.blogSlug}">
						<button>Edit</button>
				</a></td>
				<td><a href="delete/${blog.blogSlug}">
						<button>Delete</button>
				</a></td>
			</tr>
		</c:forEach>

	</table>

</body>
</html>