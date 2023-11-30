 <%@ page import="com.api.web.model.User" language="java" contentType="text/html" %> 
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Welcome to SignIn Page</title>
  </head>
  <style>
	 body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
			height: auto;	
			width: auto;
        }

        .section1 {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f4f4f4;
        }

        .column {
            display: flex;
            width: 600px;
            border-radius: 8px;
            overflow: hidden;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .leftcolumn {
            flex: 1;
            overflow: hidden;
            padding: 2%;
            align-items: center;
        }

        .leftcolumn h1{
            font-family:'Times New Roman', Times, serif ;
        }

        .log-img1 {
            width: 100%;
			height: 100%;
            height: auto;
            border-radius: 8%;
        }

        .rightcolumn {
            flex: 1;
            padding: 20px;
        }


        .redirect-page {
            text-align: right;
            font-size: 14px;
        }

        .redirect-page a {
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
        }

  </style>
  <body>

	<div class="section1">
		<div class="column">
			<div class="leftcolumn">
				<h1>Sign in</h1>
				<br><br>
				<br>
				<img src="/images/gethouseCartoon.jpg" class="log-img1" alt="Logo">
			</div>
			<div class="rightcolumn">
				<p class="redirect-page">Already have an account? <a href="Login"> Log In</a></p>
				
				<form action="/Save" method="post">
					<div class="form-row">
						<div>
							<br>
							<label for="inputEmail4">Username</label>
							<input type="text" class="form-control" id="inputEmail4" placeholder="name" name="name">
						</div>
						<div>
							<br>
							<label for="inputEmail4">Email</label>
							<input type="email" class="form-control" id="inputEmail4" placeholder="Email" name="email">
						</div>
						<div>
							<br>
							<label for="inputPassword4">Contact Number</label>
							<input type="text" class="form-control" id="inputPassword4" placeholder="Phone-number" name="contact_number">
						</div>
					
						<div >
							<br>
							<label for="inputPassword4">Password</label>
							<input type="password" class="form-control" id="inputPassword4" placeholder="Password" name="password">
						</div>
						
						<div>
							<br>
						<br>
							<button type="submit" class="btn btn-primary">Sign in</button>
						</div>
					</div>
					
				</form>
			</div>
		</div>
	</div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>
