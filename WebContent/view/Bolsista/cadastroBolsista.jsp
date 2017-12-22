<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="view/js/main.js"></script>
<link rel="stylesheet" type="text/css"
	href="view/Bolsista/menuBolsista.css">
<link rel="stylesheet" type="text/css"
	href="view/bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css"
	href="view/css/style.css" />
<script type="text/javascript" src="view/bootstrap/js/bootstrap.min.js"></script>
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro Bolsista</title>

</head>
<body>
<c:import url="../Orientador/menuOrientador.jsp"/>
<div class="menu">
	<h2>Cadastro de Bolsista</h2>
	<div style="text-align: center; color: red;">${msg}</div>


	<form action="cadastroComSucessoBolsista" method="post">
		<fieldset>
			<legend>Dados Pessoais</legend>
			<label>Nome Completo:</label> <input type="text" name="nome"
				id="nome"> <br> <label>Telefone:</label> <input
				type="text" name="telefone" id="telefone"
				onkeyup="maskIt(this,event,'(##) #####-####')"><br> <label>E-mail:</label>
			<input type="text" name="email" id="email"><br> <label>Número
				do Documento de Identificação:</label> <input type="text" name="rg" id="rg"><br>
			<label>CPF:</label> <input type="text" name="cpf" id="cpf"
				onkeyup="maskIt(this,event,'###.###.###-##')">
		</fieldset>
		<fieldset>
			<legend>Dados Bancários</legend>

			<label>Banco</label> <input type="text" name="banco" id="banco">
			<label>Agência:</label> <input type="text" name="agencia"
				id="agencia" onkeyup="maskIt(this,event,' ####-###')"><br>
			<label>Conta:</label> <input type="text" name="conta" id="conta"
				onkeyup="maskIt(this,event,'######-#')"> <br>
		</fieldset>
		<fieldset>
			<legend>Dados Escolar</legend>
			<label>Campus:</label> <select name="campus" class="form-control"
				style="width: 300px;">
				<option value="">Selecione</option>
				<c:forEach items="${listaCampus}" var="obj">
					<option value="${obj.id}">${obj.nome}</option>
				</c:forEach>
			</select> <br> <label>Matrícula:</label> <input type="text"
				name="matricula" id="matricula"><br> <label>Histórico
				Escolar:</label> <input type="file" name="historicoEscolar"
				id="historicoEscolar"><br> <label>Link do
				Currículo na Plataforma Lattes:</label> <input type="text" name="curriculo"
				id="curriculo">
		</fieldset>
		<fieldset>
			<legend>Dados para o Projeto</legend>
			<label>Login:</label> <input type="text" name="login" id="login">
			<br> <label>Senha Inicial de Acesso:</label> <input
				type="password" name="senha" id="senha" onclick="validarSenha()">
			<br> <label>Título do Plano de Trabalho:</label> <input
				type="text" name="tituloPlano" id="tituloPlano"> <br> <label
				for="tipoProjeto">Tipo de Projeto</label> <select name="tipoProjeto"
				id="tipoProjeto">
				<option>Selecione o Tipo</option>
				<option value="pibicGradIfpe">PIBIC GRAD IFPE</option>
				<option value="pibicGradCnpq">PIBIC GRAD CNPq</option>
				<option value="biaFacepe">BIA FACEPE</option>
				<option value="biaIfpe">BIA IFPE</option>
				<option value="pibicTecnico">PIBIC TÉCNICO</option>
				<option value="pibitiTecnico">PIBITI TÉCNICO</option>
				<option value="pibitiGradIfpe">PIBITI GRAD IFPE</option>
				<option value="pibitiGradCnpq">PIBITI GRAD CNPq</option>
				<option value="pibitAfIfpe">PIBIC AF IFPE</option>
				<option value="pibicAfCnpq">PIBIC AF CNPq</option>
				<option value="icVoluntario">IC VOLUNTÁRIO</option>
			</select><br>

		</fieldset>


		<input type="submit" value="Cadastrar"> <input type="reset"
			value="Limpar">
	</form>

	<script>
		function validar(dom, tipo) {
			switch (tipo) {
			case 'num':
				var regex = /[A-Za-z]/g;
				break;
			case 'text':
				var regex = /\d/g;
				break;
			}
			dom.value = dom.value.replace(regex, '');
		}

	</script>
</div>
</body>
</html>