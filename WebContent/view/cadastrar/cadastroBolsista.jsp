<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro Bolsista</title>
</head>
<body>
  <c:import url="menuBolsista" />
	
	<h2>Cadastro de Bolsista</h2>
	

<form action="cadastroComSucessoBolsista" method="post">
		<fieldset>
			<legend>Dados Pessoais</legend>
			<label>Nome Completo:</label>
			<input type="text" name="nome" id="nome"> <br>
			<label>Telefone:</label>
			<input type="text" name="telefone" id="telefone"><br>
			<label>E-mail:</label>
			<input type="text" name="email" id="email"><br>
			<label>Número do Documento de Identificação:</label>
			<input type="text" name="rg" id="rg"><br>
			<label>CPF:</label>
			<input type="text" name="cpf" id="cpf">
		</fieldset>
		<fieldset>
			<legend>Dados Bancários</legend>
					<label>Banco</label>
					<input type="text" name="">
			<label>Agência:</label>
			<input type="text" name="agencia" id="agencia"><br>
			<label>Conta:</label>
			<input type="text" name="conta" id="conta"> <br>
			</fieldset>
			<fieldset>
				<legend>Dados Escolar</legend>
				<label>Campus:</label>
				
			</select><br>
			<label>Matrícula:</label>
			<input type="text" name="matricula" id="matricula"><br>
			<label>Histórico Escolar:</label>
			<input type="file" name="historicoEscolar" id="historicoEscolar"><br>
			<label>Link do Currículo na Plataforma Lattes:</label>
			<input type="text" name="curriculo" id="curriculo">
		</fieldset>
		<fieldset>
			<legend>Dados para o Projeto</legend>
			<label>Login:</label>
			<input type="text" name="login" id="login"> <br>
			<label>Senha Inicial de Acesso:</label>
			<input type="text" name="senha" id="senha"> <br>
			<label>Confirmar Senha:</label>
			<input type="text" name="repetirsenha" id="repetirsenha"><br>
			<label>Título do Plano de Tabalho:</label>
			<input type="text" name="tituloPlano" id="tituloPlano"> <br>
			<label>Tipo de Projeto</label>
			<select>
				<option>Selecione o Tipo</option>
				<option value="pibicGradIfpe">PIBIC GRAD IFPE</option>
				<option value="pibicGradCnpq">PIBIC GRAD CNPq</option>
				<option value="biaFacepe">BIA FACEPE</option>
				<option value="biaIfpe">BIA IFPE</option>
				<option value="pibicTecnico">PIBIC TÉCNICO </option>
				<option value="pibitiTecnico">PIBITI TÉCNICO</option>
				<option value="pibitiGradIfpe">PIBITI GRAD IFPE </option>
				<option value="pibitiGradCnpq">PIBITI GRAD CNPq</option>
				<option value="pibitAfIfpe">PIBIC AF IFPE </option>
				<option value="pibicAfCnpq">PIBIC AF CNPq </option>
				<option value="icVoluntario">IC VOLUNTÁRIO</option>
			</select><br>
			<input type="submit" value="Cadastrar">
			<input type="reset" value="Limpar">
		</fieldset>
	</form>

</body>
</html>