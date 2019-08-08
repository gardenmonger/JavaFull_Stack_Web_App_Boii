<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<title>Register Today!</title>
</head>

<body>
	<div>
	<main> 
		<article>
			<div class="container">
				<h2>Register Here</h2>
				<p>
					In this example, we use
					<code>* required</code>
					, which will add the validation effect AFTER the form has been
					submitting (if there's anything missing).
				</p>
				<p>Try to submit this form before filling out the input fields,
					to see the effect.</p>
				<form action="justregister" class="needs-validation" novalidate>
					<div class="form-group">
						<label for="uname">FirstName:<code>*</code></label> <input
							type="text" class="form-control" id="uname"
							placeholder="Enter FirstName" name="firstName" required>
						<div class="valid-feedback">Valid.</div>
						<div class="invalid-feedback">Please fill out this field.</div>
					</div>
					<div class="form-group">
						<label for="uname">LastName:<code>*</code></label> <input
							type="text" class="form-control" id="uname"
							placeholder="Enter LastName" name="lastName" required>
						<div class="valid-feedback">Valid.</div>
						<div class="invalid-feedback">Please fill out this field.</div>
					</div>
					<div class="form-group">
						<label for="uname">Email:<code>*</code></label> <input type="email"
							class="form-control" id="uname" placeholder="Enter Email"
							name="Email" required>
						<div class="valid-feedback">Valid.</div>
						<div class="invalid-feedback">Please fill out this field.</div>
					</div>
					<div class="form-group">
						<label for="pwd">Password:<code>*</code></label> <input
							type="password" class="form-control" id="pwd"
							placeholder="Enter password" name="pswd" required>
						<div class="valid-feedback">Valid.</div>
						<div class="invalid-feedback">Please fill out this field.</div>
					</div>
					<div class="form-group">
						<label for="pwd">Confirm Password:<code>*</code></label> <input
							type="password" class="form-control" id="pwd"
							placeholder="Enter password" name="pswd2" required>
						<div class="valid-feedback">Valid.</div>
						<div class="invalid-feedback">Please fill out this field.</div>
					</div>
					<div class="form-group form-check">
						<label class="form-check-label"> <input
							class="form-check-input" type="checkbox" name="remember" required>
							I agree on Terms of Service.<code>*</code>
							<div class="valid-feedback">Valid.</div>
							<div class="invalid-feedback">Check this checkbox to
								continue.</div>
						</label>
					</div>
					<button type="submit" class="btn btn-primary">Submit</button>
				</form>
				<br> <a href="#">Terms of Service</a>
			</div>
		</article>
</main>
		<script>
            // Disable form submissions if there are invalid fields
            (function() {
                'use strict';
                window.addEventListener('load', function() {
                    // Get the forms we want to add validation styles to
                    var forms = document.getElementsByClassName('needs-validation');
                    // Loop over them and prevent submission
                    var validation = Array.prototype.filter.call(forms, function(form) {
                        form.addEventListener('submit', function(event) {
                            if (form.checkValidity() === false) {
                                event.preventDefault();
                                event.stopPropagation();
                            }
                            form.classList.add('was-validated');
                        }, false);
                    });
                }, false);
            })();
        </script>



	</div>

</body>
</html>