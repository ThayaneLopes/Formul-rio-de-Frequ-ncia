<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="view/css/style.css" />
<script type="text/javascript" src="view/js/main.js"></script>
<link rel="stylesheet" type="text/css"
	href="view/Bolsista/menuBolsista.css">
<link rel="stylesheet" type="text/css"
	href="view/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript" src="view/bootstrap/js/bootstrap.min.js"></script>
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Menu Bolsista</title>
</head>
<body>


<div class="nav-side-menu">


	<div class="menu-list">


		<ul id="menu-content" class="menu-content collapse out">

			<i class="fa fa-bars fa-2x toggle-btn" data-toggle="collapse"
				data-target="#menu-content"></i>
			<li><a href="#"> <i class="fa fa-home"></i> Home
			</a></li>

			<li data-toggle="collapse" data-target="#new" class="collapsed">
				<a href="#"><i class="fa fa-pencil fa-fw"></i> Preencher
					Formulário </a>
			</li>
			<li data-toggle="collapse" data-target="#new" class="collapsed">
				<a href="#"><i class="fa fa-list"></i> Formulários </a>
			</li>
			<li data-toggle="collapse" data-target="#service" class="collapsed">
				<a href="#"><i class="fa fa-keyboard-o"></i> Alterar Formulário
			</a>
			</li>

			<li data-toggle="collapse" data-target="#new" class="collapsed">
				<a href="#"><i class="fa fa-key"></i> Alterar Senha </a>
			</li>
			<li data-toggle="collapse" data-target="#new" class="collapsed">
				<a href="efetuarLogoutBolsista"><i class="fa fa-sign-out"></i> Sair </a>
			</li>




		</ul>
	</div>

</div>
</div>
</body>
</html>