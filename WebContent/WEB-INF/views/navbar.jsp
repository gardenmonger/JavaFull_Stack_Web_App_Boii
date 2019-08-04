<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">




<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">




<title>Insert title here</title>





</head>
<body>


<nav class="navbar navbar-expand-lg bg-dark navbar-dark fixed-top">
		<a class="navbar-brand" href="#">Logo</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navb">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div id="navb" class="navbar-collapse collapse">
		
			
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/feed">My Feed</a></li>
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/#">Link</a></li>
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/#">Link</a></li>
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/#">Study Zone</a></li>
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/blog">Blogg</a></li>
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/todo">Calendar</a></li>
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/#">Add a Friend</a></li>

			</ul>
			<div class="search-container">
				<form class="form-inline my-2 my-lg-0 d-flex justify-content-end"
					action="https://www.google.com">
					<input class="form-control mr-sm-2" type="text"
						placeholder="Search...">
					<button class="btn btn-success" type="submit">
						<i class="fa fa-search"></i>Search
					</button>
				</form>
			</div>
		</div>
	</nav>
	



</body>
</html>