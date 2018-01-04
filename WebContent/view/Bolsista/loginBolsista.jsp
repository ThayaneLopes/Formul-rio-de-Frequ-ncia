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

	<div class="container">
		<div class="card card-container">
			<img id="profile-img" class="profile-img-card"	src="view/img/logo.png" />
			<p id="profile-name" class="profile-name-card"></p>
			<form action="efetuarLoginBolsista" method="post" class="form-signin">
				<input type="text" id="login" name="login" class="form-control"	placeholder="Login" required autofocus> 
				<input	type="password" name="senha" id="senha" class="form-control" placeholder="Senha" required>
				<div id="remember" class="checkbox">
					<label> <input type="checkbox" value="remember-me">
						Remember me
					</label>
				</div>
				<input type="submit" value="Acessar" class="btn btn-lg btn-primary btn-block btn-signin">
			</form>

			<a href="#" class="forgot-password"> Forgot the password? </a>
		</div>
		<!-- /card-container -->
	</div>
	<!-- /container -->
</body>

</html>