<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Cadastro de Campus</h2>
	<fieldset>
		<label>Nome:</label>
		<input type="text" name="nome" id="nome"> <br>
		<label>Telefone</label>
		<input type="text" name="telefone" id="telefone"> <br>
		<label>Logradouro:</label>
		<input type="text" name="logradouro" id="logradouro"> <br>
		<label>N�mero:</label>
		<input type="text" name="numero" id="numero"> <br>
		<label>Complemento:</label>
		<input type="text" name="complemento" id="complemento"> <br>
		<label>Bairro:</label>
		<input type="text" name="bairro" id="bairro"> <br>
		<label>Cidade:</label>
		<input type="text" name="cidade" id="cidade"> <br>
		<label>CEP:</label>
		<input type="text" name="cep" id="cep"> <br>
		<label for="estado">Estado: </label> 
		<select id="estado" name="estado">
			<option>Selecione um estado</option>
			<option value="AC">Acre</option>
			<option value="AL">Alagoas</option>
			<option value="AP">Amap�</option>
			<option value="AM">Amazonas</option>
			<option value="BA">Bahia</option>
			<option value="CE">Cear�</option>
			<option value="DF">Distrito Federal</option>
			<option value="GO">Goi�s</option>
			<option value="MA">Maranh�o</option>
			<option value="MT">Mato Grosso</option>
			<option value="MS">MAto Grosso do Sul</option>
			<option value="MG">Minas Gerais</option>
			<option value="PA">Par�</option>
			<option value="PB">Para�ba</option>
			<option value="PR">Paran�</option>
			<option value="PE">Pernambuco</option>
			<option value="PI">Piau�</option>
			<option value="RJ">Rio de Janeiro</option>
			<option value="RN">Rio Grande do Norte</option>
			<option value="RS">Rio Grande do Sul</option>
			<option value="RO">Rond�nia</option>
			<option value="RR">Roraima</option>
			<option value="SC">Santa Catarina</option>
			<option value="SP">S�o Paulo</option>
			<option value="SE">Sergipe</option>
			<option value="TO">Tocantins</option>
		</select>
		
	</fieldset>

</body>
</html>