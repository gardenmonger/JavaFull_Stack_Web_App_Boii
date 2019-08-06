<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <title>Register Today!</title>
    </head>

    <body>



        <Header>
            <div class="jumbotron text-center">
                <h1><svg class="bd-placeholder-img mr-2 rounded" width="32" height="32" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 32x32">
                <title>Placeholder</title><rect width="100%" height="100%" fill="#007bff"></rect>
                <text x="50%" y="50%" fill="#007bff" dy=".3em">32x32</text></svg>${namex}
                </h1>

            </div>


        </Header>







        <div>
            <main>
                <article>
                    <div class="container">
                        <h2>Update Your Profile</h2>
                        <p>
                            Update your account
                        </p>

                        <form action="justregister" class="needs-validation" novalidate>
                            <div class="form-group">
                                <label for="uname">FirstName:</label> <input type="text" class="form-control" id="uname" placeholder="Enter FirstName" name="firstName" required>
                                <div class="valid-feedback">Valid.</div>
                                <div class="invalid-feedback">Please fill out this field.</div>
                            </div>
                            <div class="form-group">
                                <label for="uname">LastName:</label> <input type="text" class="form-control" id="uname" placeholder="Enter LastName" name="lastName" required>
                                <div class="valid-feedback">Valid.</div>
                                <div class="invalid-feedback">Please fill out this field.</div>
                            </div>
                            <div class="form-group">
                                <label for="uname">Email:</label> <input type="text" class="form-control" id="uname" placeholder="Enter Email" name="Email" required>
                                <div class="valid-feedback">Valid.</div>
                                <div class="invalid-feedback">Please fill out this field.</div>
                            </div>
                            <div class="form-group">
                                <label for="pwd">Password:</label> <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pswd" required>
                                <div class="valid-feedback">Valid.</div>
                                <div class="invalid-feedback">Please fill out this field.</div>
                            </div>
                            <div class="form-group">
                                <label for="pwd">Confirm Password:</label> <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pswd2" required>
                                <div class="valid-feedback">Valid.</div>
                                <div class="invalid-feedback">Please fill out this field.</div>
                            </div>
                            <div class="form-group form-check">
                                 
							<div class="valid-feedback">Valid.</div>
							<div class="invalid-feedback">Check this checkbox to
								continue.</div>
						
                            </div>
                            <button type="submit" class="btn btn-primary">Save</button>
                        </form>
                        <br>
                    </div>
                </article>
            </main>




        </div>

        <jsp:include page="footer.jsp "></jsp:include>



    </body>

    </html>