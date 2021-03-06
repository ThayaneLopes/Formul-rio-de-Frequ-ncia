<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login</title>
<link href="view/css/loginStyle.css" rel="stylesheet" type="text/css">
<scrip src="view/js/loginMain.js"></scrip>

</head>
<body>

	<!--
    you can substitue the span of reauth email for a input with the email and
    include the remember me checkbox
-->
	<div class="container">
		<div class="card card-container">
			<!-- <img class="profile-img-card" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120" alt="" /> -->

			<img id="profile-img" class="profile-img-card"
				src="view/img/logo.png" />
			<p id="profile-name" class="profile-name-card"></p>

			<form action="login" class="form-signin">

				<input type="text" id="inputLogin" class="form-control"	placeholder="Login" required autofocus> 
				<input	type="password" id="inputPassword" class="form-control"	placeholder="Password" required>
				<div id="remember" class="checkbox">
					<label> <input type="checkbox" value="remember-me">
						Remember me
					</label>
				</div>
				<!-- <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Sign in</button>-->

				<button class="btn btn-lg btn-primary btn-block btn-signin">
					<a href="menuOrientador">Acessar</a>
				</button>
			</form>
			<!-- /form -->
			<a href="#" class="forgot-password"> Forgot the password? </a>
		</div>
		<!-- /card-container -->
	</div>
	<!-- /container -->
</body>

</html>