<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form>
		<label>M�s/Ano:</label>
	<fieldset>
		<legend>Dados Usu�rios</legend>
		<label>Nome do Estudante Pesquisador:</label>
		<input type="" name=""> <br>
		<label>Matricula do Estudante Pesquisador:</label>
		<input type="" name=""> <br>
		<label>T�tulo do Plano de Trabalho do Bolsista:</label>
		<input type="" name=""> <br>
		<label>Nome do Orientador:</label>
		<input type="" name=""> <br>
		<label>Tipo de Projeto</label>
		<input type="" name=""><br>
	</fieldset>
	<fieldset>
		<legend>Cronograma</legend>
		<label>Situa��o do Cronograma</label>
		<select>
			<option>Atividades mensais realizadas de acordo com o cronograma proposto</option>
			<option>Cronograma adiantado</option>
			<option>Cronograma atrasado</option>
			<option>Conclu�do</option>
		</select><br>
		<label>Justificativa</label><br>
		<textarea rows="10" cols="60" maxlength="500"></textarea>
	</fieldset>
	<fieldset>
		<legend>Resumo Atividades Mensais</legend><br>
	<textarea rows="10" cols="60" maxlength="500"></textarea>
	</fieldset>
	<fieldset>
		<legend>Avalia��o do Professor</legend>
		<label>Cumprimento de Carga Hor�ria</label>
		<input type="radio" name="cargaHoraria" value="ruim" checked=""> Ruim
		<input type="radio" name="cargaHoraria" value="regular"> Regular 
		<input type="radio" name="cargaHoraria" value="bom"> Bom
		<input type="radio" name="cargaHoraria" value="otimo"> �timo
		<br>
		<label>Interesse nas atividades de pesquisa</label>
		<input type="radio" name="interesseAtividade" value="ruim" checked=""> Ruim
		<input type="radio" name="interesseAtividade" value="regular"> Regular 
		<input type="radio" name="interesseAtividade" value="bom"> Bom
		<input type="radio" name="interesseAtividade" value="otimo"> �timo
		<br>
		<label>Progresso alcan�ado</label>
		<input type="radio" name="progressoAlcancado" value="ruim" checked=""> Ruim
		<input type="radio" name="progressoAlcancado" value="regular"> Regular 
		<input type="radio" name="progressoAlcancado" value="bom"> Bom
		<input type="radio" name="progressoAlcancado" value="otimo"> �timo
		<br>
		<label>Pagamento de Bolsa?</label>
		<input type="radio" name="pagamentoBolsa" value="sim" checked=""> Sim
		<input type="radio" name="pagamentoBolsa" value="nao"> N�o 
	
		<br>
	</fieldset>
	<fieldset>
		<legend>Coment�rios</legend>
		<label>Coment�rios e Dificuldades do Bolsista:</label> <br>
		<textarea rows="10" cols="100" maxlength="500"></textarea> <br>
		<label>Coment�rios e Dificuldades do Orinetador:</label> <br>
		<textarea rows="10" cols="100" maxlength="500"></textarea>
	</fieldset>

	</form>
</body>
</html>