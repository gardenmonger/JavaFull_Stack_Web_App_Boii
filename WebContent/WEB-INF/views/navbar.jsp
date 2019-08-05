<!DOCTYPE html>

<html>

<head>
    <meta charset="UTF-8">




    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">



    <title>Insert title here</title>





</head>

<body>


    <nav class="navbar navbar-expand-lg bg-dark navbar-dark fixed-top">
        <a class="navbar-brand" href="#">Logo</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navb">
			<span class="navbar-toggler-icon"></span>
		</button>
        <div id="navb" class="navbar-collapse collapse">


            <ul class="navbar-nav mr-auto">
                <li class="nav-item"><a class="nav-link w3-hover-teal" href="${pageContext.request.contextPath}/feed">My Feed</a></li>
                <li class="nav-item"><a class="nav-link w3-hover-teal" href="${pageContext.request.contextPath}/message">Messages</a></li>
                <li class="nav-item"><a class="nav-link w3-hover-teal" href="${pageContext.request.contextPath}/study">Study Zone</a></li>
                <li class="nav-item"><a class="nav-link w3-hover-teal" href="${pageContext.request.contextPath}/blog">Blog</a></li>
                <li class="nav-item"><a class="nav-link w3-hover-teal" href="${pageContext.request.contextPath}/todo">Calendar</a></li>
                <li class="nav-item"><a class="nav-link w3-hover-teal" href="${pageContext.request.contextPath}/addfriend">Add a Friend</a></li>
                <li class="nav-item dropdown">

                   
				            <a class="nav-link dropdown-toggle w3-hover-teal" href="#" id="navbardrop" data-toggle="dropdown">Settings</a>
                                                  
                            
                            <div class="dropdown-menu">
											        <a class="dropdown-item w3-hover-teal" href="${pageContext.request.contextPath}/profile">Profile</a>
											        <a class="dropdown-item w3-hover-teal" href="${pageContext.request.contextPath}/settings">Settings</a>
											        <a class="dropdown-item w3-hover-teal" href="${pageContext.request.contextPath}/logout">Logout</a>
        </div>
        </li>
        </ul>

        </div>
    </nav>




</body>

</html>