<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Cadastro Usu�rio</h2>

	<fieldset>
		<legend>Dados Usu�rio</legend>
		<label>Nome:</label>
		<input type="text" name="nome" id="nome"> <br>
		<label>Telefone:</label>
		<input type="text" name="telefone" id="telefone"> <br>
		<label>N�mero do Documento de Identifica��o:</label> 
		<input type="text" name="rg" id="rg"> <br>
		<label>N�mero do CPF:</label> 
		<input type="text" name="cpf" id="cpf"> <br>
		<label>E-mail:</label> 
		<input type="text" name="email" id="email"> <br>
	</fieldset>
	<fieldset>
		<legend>Tipo Pessoais </legend>
		<label>� Gestor?</label>
		<input type="radio" name="gestor" value="yes" checked=""> Sim
		<input type="radio" name="gestor" value="no" > N�o <br>
		<label>� Orientador?</label>
		<input type="radio" name="orientador" value="yes" checked=""> Sim
		<input type="radio" name="orientador" value="no" > N�o <br>
		<label>Faz parte PROPESQ?</label>
		<input type="radio" name="propesq" value="yes" checked=""> Sim
		<input type="radio" name="propesq" value="no" > N�o <br>
	</fieldset>
	<fieldset>
		<legend>Dados Adicionais </legend>
		<label>Login:</label>
		<input type="text" name="login" id="login"> <br>
		<label>Senha:</label>
		<input type="text" name="senha" id="senha"> <br>
		<label>Confirmar Senha:</label>
		<input type="text" name="senha" id="senha"> <br>
		<label>Link do Curr�culo na Plataforma Lattes:</label>
		<input type="text" name="curriculo" id="curriculo"> <br>
		<label>Campus:</label>
		<input type="text" name="campus" id="campus"><br>
	</fieldset>

</body>
</html>