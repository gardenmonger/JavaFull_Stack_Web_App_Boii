<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="resources/css/stylesheet.css" >
<title>Messages</title>
</head>

<style>
#messageoutput {
    height: 30000px;
    background: linear-gradient(141deg, #0fb8ad 0%, #1fc8db 51%, #2cb5e8 75%);
}

#messageinput {
    flex: 100%;
    position: fixed;
}





</style>

<body>



 <header id="messageinput" class="d-flex flex-column jumbotron text-center fixed-top">
<jsp:include page="navbar.jsp"></jsp:include>
        <div class="jumbotron text-center" style="margin-bottom: 0">
            <h1>
                Messages
            </h1>
        </div>
	<form action="send" method="post" modelAttribute="susers">
        <div id="messagebar" class="d-flex">
            <input type="text" class="p-2  form-control form-control-lg" name="textfield">
            <input type="submit" class="btn btn-success">
        </div>
	</form>
    </header>


<div id="messageoutput">




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
<br>
<br>
<br>
<br>
<br>

<br>
<br>

<div class="container">

<h1>Message: ${message}</h1>

</div>



    </div>


<jsp:include page="footer.jsp"></jsp:include>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
</html>