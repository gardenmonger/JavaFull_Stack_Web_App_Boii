<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<style>
#navdash {
	flex: 100%;
	position: sticky;
}

#mainbox {
	height: 3000px;
}


</style>

<body>

	<jsp:include page="navbar.jsp"></jsp:include>
	<br>
	<br>

	<div class="jumbotron text-center " style="margin-bottom: 0">
		<h1>
			<svg class="bd-placeholder-img mr-2 rounded" width="32" height="32"
				xmlns="http://www.w3.org/2000/svg"
				preserveAspectRatio="xMidYMid slice" focusable="false" role="img"
				aria-label="Placeholder: 32x32">
				<title>Placeholder</title><rect width="100%" height="100%"
					fill="#007bff"></rect>
				<text x="50%" y="50%" fill="#007bff" dy=".3em">32x32</text></svg>
			Welcome! ${namex}
		</h1>
		<p>${message}</p>
	</div>

	<div id="navdash" class="nav-scroller bg-white shadow-sm position-sticky">
		<nav class="nav nav-underline ">
			<a class="nav-link active " href="# ">Dashboard</a> <a
				class="nav-link " href="# ">Notification</a> <a class="nav-link "
				href="# ">Friends</a> <a class="nav-link " href="# ">Trending</a> <a
				class="nav-link " href="# ">Gossip</a> <a class="nav-link "
				href="# ">Collage</a>



		</nav>

	</div>




	<main id="mainbox" class="container "> <!-- <div class="d-flex ">
                <div class="col-sm-4 position-fixed ">
                    <p class="hash ">Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae et repudiandae minima possimus nihil iure ratione nisi sed molestiae accusamus beatae dolorum eaque omnis consequuntur at qui dolore quia similique dicta voluptas laboriosam
                        debitis nemo, voluptate ab! Nobis illo quae, numquam provident nostrum velit error quos officiis. Dignissimos deserunt doloremque, optio unde quod, velit ex at provident quo iste perferendis!</p>
                </div> --> <main role="main " class="container "></main>
	<div class="flex-grow-1 my-3 p-3 rounded shadow-sm ">
		<h6 class="border-bottom border-gray pb-2 mb-0">Recent updates</h6>

		<div class="media text-muted pt-3 ">
			<svg class="bd-placeholder-img mr-2 rounded " width="32 "
				height="32 " xmlns="http://www.w3.org/2000/svg "
				preserveAspectRatio="xMidYMid slice " focusable="false " role="img "
				aria-label="Placeholder: 32x32
            ">
				<title>Placeholder</title><rect width="100% " height="100% "
					fill="#007bff "></rect>
				<text x="50% " y="50% " fill="#007bff " dy=".3em ">32x32</text></svg>
			<p
				class="hash media-body p-3 mb-0 small lh-125 boder-bottom border-grey ">Lorem
				ipsum dolor sit amet consectetur adipisicing elit. Vitae et
				repudiandae minima possimus nihil iure ratione nisi sed molestiae
				accusamus beatae dolorum eaque omnis consequuntur at qui dolore quia
				similique dicta voluptas laboriosam debitis nemo, voluptate ab!
				Nobis illo quae, numquam provident nostrum velit error quos
				officiis. Dignissimos deserunt doloremque, optio unde quod, velit ex
				at provident quo iste perferendis!</p>

		</div>
		<div class="media text-muted pt-3 ">
			<svg class="bd-placeholder-img mr-2 rounded " width="32 "
				height="32 " xmlns="http://www.w3.org/2000/svg "
				preserveAspectRatio="xMidYMid slice " focusable="false " role="img "
				aria-label="Placeholder: 32x32
            ">
				<title>Placeholder</title><rect width="100% " height="100% "
					fill="#007bff "></rect>
				<text x="50% " y="50% " fill="#007bff " dy=".3em ">32x32</text></svg>
			<p
				class="hash media-body p-3 mb-0 small lh-125 boder-bottom border-grey ">Lorem
				ipsum dolor sit amet consectetur adipisicing elit. Vitae et
				repudiandae minima possimus nihil iure ratione nisi sed molestiae
				accusamus beatae dolorum eaque omnis consequuntur at qui dolore quia
				similique dicta voluptas laboriosam debitis nemo, voluptate ab!
				Nobis illo quae, numquam provident nostrum velit error quos
				officiis. Dignissimos deserunt doloremque, optio unde quod, velit ex
				at provident quo iste perferendis!</p>

		</div>

		<div class="media text-muted pt-3 ">
			<svg class="bd-placeholder-img mr-2 rounded " width="32 "
				height="32 " xmlns="http://www.w3.org/2000/svg "
				preserveAspectRatio="xMidYMid slice " focusable="false " role="img "
				aria-label="Placeholder: 32x32
                ">
				<title>Placeholder</title><rect width="100% " height="100% "
					fill="#007bff "></rect>
				<text x="50% " y="50% " fill="#007bff " dy=".3em ">32x32</text></svg>
			<p
				class="hash media-body p-3 mb-0 small lh-125 boder-bottom border-grey ">Lorem
				ipsum dolor sit amet consectetur adipisicing elit. Vitae et
				repudiandae minima possimus nihil iure ratione nisi sed molestiae
				accusamus beatae dolorum eaque omnis consequuntur at qui dolore quia
				similique dicta voluptas laboriosam debitis nemo, voluptate ab!
				Nobis illo quae, numquam provident nostrum velit error quos
				officiis. Dignissimos deserunt doloremque, optio unde quod, velit ex
				at provident quo iste perferendis!</p>

		</div>
		<div class="media text-muted pt-3 ">
			<svg class="bd-placeholder-img mr-2 rounded " width="32 "
				height="32 " xmlns="http://www.w3.org/2000/svg "
				preserveAspectRatio="xMidYMid slice " focusable="false " role="img "
				aria-label="Placeholder: 32x32
                ">
				<title>Placeholder</title><rect width="100% " height="100% "
					fill="#007bff "></rect>
				<text x="50% " y="50% " fill="#007bff " dy=".3em ">32x32</text></svg>
			<p
				class="hash media-body p-3 mb-0 small lh-125 boder-bottom border-grey ">Lorem
				ipsum dolor sit amet consectetur adipisicing elit. Vitae et
				repudiandae minima possimus nihil iure ratione nisi sed molestiae
				accusamus beatae dolorum eaque omnis consequuntur at qui dolore quia
				similique dicta voluptas laboriosam debitis nemo, voluptate ab!
				Nobis illo quae, numquam provident nostrum velit error quos
				officiis. Dignissimos deserunt doloremque, optio unde quod, velit ex
				at provident quo iste perferendis!</p>

		</div>
	</div>
	</div>
	<div class="my-3 p-3 bg-white rounded shadow-sm">
		<h6 class="border-bottom border-gray pb-2 mb-0">Suggestions</h6>
		<div class="media text-muted pt-3">
			<svg class="bd-placeholder-img mr-2 rounded" width="32" height="32"
				xmlns="http://www.w3.org/2000/svg"
				preserveAspectRatio="xMidYMid slice" focusable="false" role="img"
				aria-label="Placeholder: 32x32">
				<title>Placeholder</title><rect width="100%" height="100%"
					fill="#007bff"></rect>
				<text x="50%" y="50%" fill="#007bff" dy=".3em">32x32</text></svg>
			<div
				class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
				<div class="d-flex justify-content-between align-items-center w-100">
					<strong class="text-gray-dark">Full Name</strong> <a href="#">Follow</a>
				</div>
				<span class="d-block">@username</span>
			</div>
		</div>
		<div class="media text-muted pt-3">
			<svg class="bd-placeholder-img mr-2 rounded" width="32" height="32"
				xmlns="http://www.w3.org/2000/svg"
				preserveAspectRatio="xMidYMid slice" focusable="false" role="img"
				aria-label="Placeholder: 32x32">
				<title>Placeholder</title><rect width="100%" height="100%"
					fill="#007bff"></rect>
				<text x="50%" y="50%" fill="#007bff" dy=".3em">32x32</text></svg>
			<div
				class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
				<div class="d-flex justify-content-between align-items-center w-100">
					<strong class="text-gray-dark">Full Name</strong> <a href="#">Follow</a>
				</div>
				<span class="d-block">@username</span>
			</div>
		</div>
		<div class="media text-muted pt-3">
			<svg class="bd-placeholder-img mr-2 rounded" width="32" height="32"
				xmlns="http://www.w3.org/2000/svg"
				preserveAspectRatio="xMidYMid slice" focusable="false" role="img"
				aria-label="Placeholder: 32x32">
				<title>Placeholder</title><rect width="100%" height="100%"
					fill="#007bff"></rect>
				<text x="50%" y="50%" fill="#007bff" dy=".3em">32x32</text></svg>
			<div
				class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
				<div class="d-flex justify-content-between align-items-center w-100">
					<strong class="text-gray-dark">Full Name</strong> <a href="#">Follow</a>
				</div>
				<span class="d-block">@username</span>
			</div>
		</div>
		<small class="d-block text-right mt-3"> <a href="#">All
				suggestions</a>
		</small>
	</div>


	<jsp:include page="footer.jsp "></jsp:include> </main>



</body>

</html>