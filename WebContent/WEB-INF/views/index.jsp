<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
	
<!-- <script src="resources/javascript/script.js"></script> -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>


<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Roboto:400,500,700,400italic|Material+Icons">

<title>Login Page</title>
<style>
/* Make the image fully responsive */
.carousel-inner img {
	width: 100%;
	height: 100%;
}
</style>

</head>

<body>

	<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
	
	
	<a class="navbar-brand" href="#">Logo</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navb">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div id="navb" class="navbar-collapse collapse">
			
			<ul class="navbar-nav mr-auto">
			<!-- Just have tp figure out a purpose for the links -->
				<!-- <li class="nav-item"><a class="nav-link" href="#">Link</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Link</a></li> -->
			</ul>
			<div class="search-container">
				<form class="form-inline" action="search">
					<input class="form-control mr-sm-2" type="text"
						placeholder="Search" name="searchname">
					<button class="btn btn-success" type="submit">Search</button>
				</form>
			</div>
		</div>
	</nav>
	<br>
	<br>
	<div class="jumbotron text-center" style="margin-bottom: 0">
		<h1>Login to PassAlong</h1>
		<p>share whats Going on in your school!</p>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-sm-8">


				<div id="#myCarousel" class="carousel slide" data-ride="carousel">

					<!-- Indicators -->
					<ul class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
					</ul>

					<!-- The slideshow -->
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="resources/img/campus1.jpg" alt="Japan" width="1100"
								height="500">
						</div>
						<div class="carousel-item">
							<img src="resources/img/campus2.jpg" alt="Japan2" width="1100"
								height="500">
						</div>
						<div class="carousel-item">
							<img src="resources/img/campus3.jpg" alt="Japan3" width="1100"
								height="500">
						</div>
					</div>

					<!-- Left and right controls -->
					<a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
						<span class="carousel-control-prev-icon"></span>
					</a> <a class="carousel-control-next" href="#myCarousel" data-slide="next">
						<span class="carousel-control-next-icon"></span>
					</a>
				</div>
			</div>

			<!--  THIS IS THE LOGIN PART OF THE HTML -->
			<div id="loginfade" class="col-sm-4">

				<h2>Login Here</h2>
				<p>Login to see who your friends are talking about</p>
				<form:form action="getUser" class="needs-validation" method="post"
					modelAttribute="susers">
					<div class="form-group">
						<label for="uname">Email:</label> <input type="text"
							class="form-control" id="uname" placeholder="Enter Email"
							name="FirstName" required>
						<div class="valid-feedback">Valid.</div>
						<div class="invalid-feedback">Please fill out this field.</div>
					</div>
					<div class="form-group">
						<label for="pwd">Password:</label> <input type="password"
							class="form-control" id="pwd" placeholder="Enter password"
							name="password" required>
						<div class="valid-feedback">Valid.</div>
						<div class="invalid-feedback">Please fill out this field.</div>
					</div>
					<div class="form-group form-check">
						<label class="form-check-label"> <input
							class="form-check-input" type="checkbox" name="remember" required>
							Remember Me
							<div class="valid-feedback">Valid.</div>
							<div class="invalid-feedback">Check this checkbox to
								continue.</div>
						</label>
					</div>
					<button type="submit" class="btn btn-primary">Submit</button>
				</form:form>
				<a href="signup">Sign up</a><br> <a href="forgotpass">Forgot your
					password? / Resend Activation</a><br>

			</div>
		</div>
	</div>





	<jsp:include page="footer.jsp"></jsp:include>








	<script>
		// Disable form submissions if there are invalid fields
		(function() {
			'use strict';
			window.addEventListener('load',
					function() {
						// Get the forms we want to add validation styles to
						var forms = document
								.getElementsByClassName('needs-validation');
						// Loop over them and prevent submission
						var validation = Array.prototype.filter.call(forms,
								function(form) {
									form.addEventListener('submit', function(
											event) {
										if (form.checkValidity() === false) {
											event.preventDefault();
											event.stopPropagation();
										}
										form.classList.add('was-validated');
									}, false);
								});
					}, false);
		})();
		(function() {
			
		
		
	</script>
	<script type="text/javascript">
	
	$(document).ready(function() {
	    $("#loginfade").onclick(function() {
	    	$(this).fadein(20);
			
		});
	});
	
	</script>
	
	<script src="resources/javascript/script.js"></script>
	<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  

</body>
</html>