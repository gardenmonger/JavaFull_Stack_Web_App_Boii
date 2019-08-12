<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<title>Messages</title>
</head>

<!--    <style>
        #messageoutput {
            height: 30000px;
            background: linear-gradient(141deg, #0fb8ad 0%, #1fc8db 51%, #2cb5e8 75%);
        }
        
        #messageinput {
            flex: 100%;
            position: fixed;
        }
    </style> -->

<body>

	<jsp:include page="navbar.jsp"></jsp:include>

<div class="row">
	<div class="col-md-8">
		<header id="messageinput"
			class="d-flex flex-column  text-center fixed-bottom">

			<div class="jumbotron text-center" style="margin-bottom: 0">
				<h1>Messages</h1>
				<form action="send" method="post" modelAttribute="susers">
					<div id="messagebar" class="d-flex">
						<input type="text" class="p-2  form-control form-control-lg"
							name="textfield"> <input type="submit"
							class="btn btn-success">
					</div>
				</form>
			</div>

		</header>
	</div>
	<div class="col-md-4">

		<h1>things</h1>

	</div>
</div>









	<div id="messageoutput">




		<br> <br> <br> <br> <br> <br> <br>
		<br> <br> <br> <br> <br> <br> <br>
		

		<div >

			<h1>Message: ${message}</h1>






		</div>



	</div>


	

<jsp:include page="footer.jsp"></jsp:include>

</body>

</html>