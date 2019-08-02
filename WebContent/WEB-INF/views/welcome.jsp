<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<title>My Feed</title>
</head>

<body>

	<jsp:include page="navbar.jsp"></jsp:include>
	<br>
	<br>

	<div class="jumbotron text-center" style="margin-bottom: 0">
		<h1>Welcome! ${namex}</h1>
		<p>${message}</p>
	</div>

	<div class="col-sm-4">
		<p class="hash">Lorem ipsum dolor sit amet consectetur adipisicing
			elit. Vitae et repudiandae minima possimus nihil iure ratione nisi
			sed molestiae accusamus beatae dolorum eaque omnis consequuntur at
			qui dolore quia similique dicta voluptas laboriosam debitis nemo,
			voluptate ab! Nobis illo quae, numquam provident nostrum velit error
			quos officiis. Dignissimos deserunt doloremque, optio unde quod,
			velit ex at provident quo iste perferendis!</p>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>



</body>
</html>