<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">



<title>Your Settings</title>
</head>
<body>


	<jsp:include page="navbar.jsp"></jsp:include>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	
	<main id="mainbox" class="container ">
	
	<div class="flex-grow-1 my-3 p-3 rounded shadow-sm ">
	
	<div class="media text-muted pt-3 ">
	
			<svg class="bd-placeholder-img mr-2 rounded " width="32 "
				height="32 " xmlns="http://www.w3.org/2000/svg "
				preserveAspectRatio="xMidYMid slice " focusable="false " role="img "
				aria-label="Placeholder: 32x32">
				
				<title>Placeholder</title><rect width="100% " height="100% " fill="#007bff "></rect>
				
				<text x="50% " y="50% " fill="#007bff " dy=".3em ">32x32</text></svg>
				
				<div class="text-center">
				<p class="hash media-body p-3 mb-0 small lh-125 boder-bottom border-grey ">
				<h1> ${namex}</h1>
				</div>

				<a href="${pageContext.request.contextPath}/updateUsers/${users.id}">Update</a>
				<a href="${pageContext.request.contextPath}/removeUsers/${users.id}">Delete</a>
				
				</p>

		</div>
		</div>
		</main>
	
	
	
	
	

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>