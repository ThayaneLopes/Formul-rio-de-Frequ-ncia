<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro Tipo de Usu�rio</title>
</head>
<body>
<div style="text-align: center; color: red;">${msg}</div>
<form action="cadastroComSucessoTipoUsuario" method="post">

<label> Descri��o:</label>
<input type="text" id="descricao" name="descricao" placeholder="Ex.: Gestor" > <br>
<input type="submit" value="Enviar">

</form>
</body>
</html>