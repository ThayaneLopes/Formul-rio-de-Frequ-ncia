<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="view/index/style.css">
	<style>
		h2{
			text-align: center;
			color:#fff;
			font-family: Courier, monospace;
			margin-top: 6%;
			margin-bottom: 4%;
		}

	</style>
<title>Formul�rio de Frequ�ncia</title>
</head>
<body>

	<h2>Selecione o tipo de Usu�rio</h2>

	<ul class="rollovers grid">

  <li class="logo_grow">
    <svg class="logo" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 70 70" enable-background="new 0 0 70 70"><path d="M36.4 61.2c-.7.7-1.9.7-2.7 0l-4.2-4.2c-.7-.7-1.9-.7-2.7 0l-1.4 1.4c-.7.7-.7 1.9 0 2.7l4.2 4.2c.7.7 1.9 1.9 2.7 2.7l1.4 1.4c.7.7 1.9.7 2.7 0l1.4-1.4c.7-.7 1.9-1.9 2.7-2.7l4.2-4.2c.7-.7.7-1.9 0-2.7l-1.4-1.4c-.7-.7-1.9-.7-2.7 0l-4.2 4.2zM61.2 33.8c.7.7.7 1.9 0 2.7l-4.2 4.2c-.7.7-.7 1.9 0 2.7l1.4 1.4c.7.7 1.9.7 2.7 0l4.2-4.2c.7-.7 1.9-1.9 2.7-2.7l1.4-1.4c.7-.7.7-1.9 0-2.7l-1.4-1.5c-.7-.7-1.9-1.9-2.7-2.7l-4.2-4.2c-.7-.7-1.9-.7-2.7 0l-1.4 1.5c-.7.7-.7 1.9 0 2.7l4.2 4.2zM33.6 8.8c.7-.7 1.9-.7 2.7 0l4.2 4.2c.7.7 1.9.7 2.7 0l1.4-1.4c.7-.7.7-1.9 0-2.7l-4.2-4.2c-.7-.7-1.9-1.9-2.7-2.7l-1.4-1.4c-.7-.7-1.9-.7-2.7 0l-1.5 1.4c-.7.7-1.9 1.9-2.7 2.7l-4.2 4.2c-.7.7-.7 1.9 0 2.7l1.4 1.4c.7.7 1.9.7 2.7 0l4.3-4.2zM8.8 36.2c-.7-.7-.7-1.9 0-2.7l4.2-4.2c.7-.7.7-1.9 0-2.7l-1.4-1.4c-.7-.7-1.9-.7-2.7 0l-4.2 4.2c-.7.7-1.9 1.9-2.7 2.7l-1.4 1.4c-.7.7-.7 1.9 0 2.7l1.4 1.5c.7.7 1.9 1.9 2.7 2.7l4.2 4.2c.7.7 1.9.7 2.7 0l1.4-1.4c.7-.7.7-1.9 0-2.7l-4.2-4.3z"/></svg>
    <span class="icon_contain">
      <svg class="icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 50" enable-background="new 0 0 50 50"><g><circle cx="4.7" cy="9.4" r="4.7"/><circle cx="4.7" cy="25" r="4.7"/><circle cx="4.7" cy="40.6" r="4.7"/><path d="M18.8 12.5h28.1c1.7 0 3.1-1.4 3.1-3.1s-1.4-3.1-3.1-3.1h-28.1c-1.7 0-3.1 1.4-3.1 3.1s1.3 3.1 3.1 3.1zM46.9 21.9h-28.1c-1.7 0-3.1 1.4-3.1 3.1s1.4 3.1 3.1 3.1h28.1c1.7 0 3.1-1.4 3.1-3.1s-1.4-3.1-3.1-3.1zM46.9 37.5h-28.1c-1.7 0-3.1 1.4-3.1 3.1s1.4 3.1 3.1 3.1h28.1c1.7 0 3.1-1.4 3.1-3.1s-1.4-3.1-3.1-3.1z"/></g></svg>
    </span>
    <a href="loginBolsista">Bolsista</a>  
  </li>
  
  
  <li class="logo_rotate">
    <svg class="logo" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 70 70" enable-background="new 0 0 70 70"><path d="M36.4 61.2c-.7.7-1.9.7-2.7 0l-4.2-4.2c-.7-.7-1.9-.7-2.7 0l-1.4 1.4c-.7.7-.7 1.9 0 2.7l4.2 4.2c.7.7 1.9 1.9 2.7 2.7l1.4 1.4c.7.7 1.9.7 2.7 0l1.4-1.4c.7-.7 1.9-1.9 2.7-2.7l4.2-4.2c.7-.7.7-1.9 0-2.7l-1.4-1.4c-.7-.7-1.9-.7-2.7 0l-4.2 4.2zM61.2 33.8c.7.7.7 1.9 0 2.7l-4.2 4.2c-.7.7-.7 1.9 0 2.7l1.4 1.4c.7.7 1.9.7 2.7 0l4.2-4.2c.7-.7 1.9-1.9 2.7-2.7l1.4-1.4c.7-.7.7-1.9 0-2.7l-1.4-1.5c-.7-.7-1.9-1.9-2.7-2.7l-4.2-4.2c-.7-.7-1.9-.7-2.7 0l-1.4 1.5c-.7.7-.7 1.9 0 2.7l4.2 4.2zM33.6 8.8c.7-.7 1.9-.7 2.7 0l4.2 4.2c.7.7 1.9.7 2.7 0l1.4-1.4c.7-.7.7-1.9 0-2.7l-4.2-4.2c-.7-.7-1.9-1.9-2.7-2.7l-1.4-1.4c-.7-.7-1.9-.7-2.7 0l-1.5 1.4c-.7.7-1.9 1.9-2.7 2.7l-4.2 4.2c-.7.7-.7 1.9 0 2.7l1.4 1.4c.7.7 1.9.7 2.7 0l4.3-4.2zM8.8 36.2c-.7-.7-.7-1.9 0-2.7l4.2-4.2c.7-.7.7-1.9 0-2.7l-1.4-1.4c-.7-.7-1.9-.7-2.7 0l-4.2 4.2c-.7.7-1.9 1.9-2.7 2.7l-1.4 1.4c-.7.7-.7 1.9 0 2.7l1.4 1.5c.7.7 1.9 1.9 2.7 2.7l4.2 4.2c.7.7 1.9.7 2.7 0l1.4-1.4c.7-.7.7-1.9 0-2.7l-4.2-4.3z"/></svg>
    <span class="icon_contain">
      <svg class="icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 50" enable-background="new 0 0 50 50"><g><circle cx="4.7" cy="9.4" r="4.7"/><circle cx="4.7" cy="25" r="4.7"/><circle cx="4.7" cy="40.6" r="4.7"/><path d="M18.8 12.5h28.1c1.7 0 3.1-1.4 3.1-3.1s-1.4-3.1-3.1-3.1h-28.1c-1.7 0-3.1 1.4-3.1 3.1s1.3 3.1 3.1 3.1zM46.9 21.9h-28.1c-1.7 0-3.1 1.4-3.1 3.1s1.4 3.1 3.1 3.1h28.1c1.7 0 3.1-1.4 3.1-3.1s-1.4-3.1-3.1-3.1zM46.9 37.5h-28.1c-1.7 0-3.1 1.4-3.1 3.1s1.4 3.1 3.1 3.1h28.1c1.7 0 3.1-1.4 3.1-3.1s-1.4-3.1-3.1-3.1z"/></g></svg>
    </span>
    <a href="loginOrientador">Orientador</a>  
  </li>
  <li class="logo_rotate_alt">
    <svg class="logo" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 70 70" enable-background="new 0 0 70 70"><path d="M36.4 61.2c-.7.7-1.9.7-2.7 0l-4.2-4.2c-.7-.7-1.9-.7-2.7 0l-1.4 1.4c-.7.7-.7 1.9 0 2.7l4.2 4.2c.7.7 1.9 1.9 2.7 2.7l1.4 1.4c.7.7 1.9.7 2.7 0l1.4-1.4c.7-.7 1.9-1.9 2.7-2.7l4.2-4.2c.7-.7.7-1.9 0-2.7l-1.4-1.4c-.7-.7-1.9-.7-2.7 0l-4.2 4.2zM61.2 33.8c.7.7.7 1.9 0 2.7l-4.2 4.2c-.7.7-.7 1.9 0 2.7l1.4 1.4c.7.7 1.9.7 2.7 0l4.2-4.2c.7-.7 1.9-1.9 2.7-2.7l1.4-1.4c.7-.7.7-1.9 0-2.7l-1.4-1.5c-.7-.7-1.9-1.9-2.7-2.7l-4.2-4.2c-.7-.7-1.9-.7-2.7 0l-1.4 1.5c-.7.7-.7 1.9 0 2.7l4.2 4.2zM33.6 8.8c.7-.7 1.9-.7 2.7 0l4.2 4.2c.7.7 1.9.7 2.7 0l1.4-1.4c.7-.7.7-1.9 0-2.7l-4.2-4.2c-.7-.7-1.9-1.9-2.7-2.7l-1.4-1.4c-.7-.7-1.9-.7-2.7 0l-1.5 1.4c-.7.7-1.9 1.9-2.7 2.7l-4.2 4.2c-.7.7-.7 1.9 0 2.7l1.4 1.4c.7.7 1.9.7 2.7 0l4.3-4.2zM8.8 36.2c-.7-.7-.7-1.9 0-2.7l4.2-4.2c.7-.7.7-1.9 0-2.7l-1.4-1.4c-.7-.7-1.9-.7-2.7 0l-4.2 4.2c-.7.7-1.9 1.9-2.7 2.7l-1.4 1.4c-.7.7-.7 1.9 0 2.7l1.4 1.5c.7.7 1.9 1.9 2.7 2.7l4.2 4.2c.7.7 1.9.7 2.7 0l1.4-1.4c.7-.7.7-1.9 0-2.7l-4.2-4.3z"/></svg>
    <span class="icon_contain">
      <svg class="icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 50" enable-background="new 0 0 50 50"><g><circle cx="4.7" cy="9.4" r="4.7"/><circle cx="4.7" cy="25" r="4.7"/><circle cx="4.7" cy="40.6" r="4.7"/><path d="M18.8 12.5h28.1c1.7 0 3.1-1.4 3.1-3.1s-1.4-3.1-3.1-3.1h-28.1c-1.7 0-3.1 1.4-3.1 3.1s1.3 3.1 3.1 3.1zM46.9 21.9h-28.1c-1.7 0-3.1 1.4-3.1 3.1s1.4 3.1 3.1 3.1h28.1c1.7 0 3.1-1.4 3.1-3.1s-1.4-3.1-3.1-3.1zM46.9 37.5h-28.1c-1.7 0-3.1 1.4-3.1 3.1s1.4 3.1 3.1 3.1h28.1c1.7 0 3.1-1.4 3.1-3.1s-1.4-3.1-3.1-3.1z"/></g></svg>
    </span>
    <a href="loginGestor">Gestor</a>  
  </li>
  <li class="logo_grow_rotate">
    <svg class="logo" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 70 70" enable-background="new 0 0 70 70"><path d="M36.4 61.2c-.7.7-1.9.7-2.7 0l-4.2-4.2c-.7-.7-1.9-.7-2.7 0l-1.4 1.4c-.7.7-.7 1.9 0 2.7l4.2 4.2c.7.7 1.9 1.9 2.7 2.7l1.4 1.4c.7.7 1.9.7 2.7 0l1.4-1.4c.7-.7 1.9-1.9 2.7-2.7l4.2-4.2c.7-.7.7-1.9 0-2.7l-1.4-1.4c-.7-.7-1.9-.7-2.7 0l-4.2 4.2zM61.2 33.8c.7.7.7 1.9 0 2.7l-4.2 4.2c-.7.7-.7 1.9 0 2.7l1.4 1.4c.7.7 1.9.7 2.7 0l4.2-4.2c.7-.7 1.9-1.9 2.7-2.7l1.4-1.4c.7-.7.7-1.9 0-2.7l-1.4-1.5c-.7-.7-1.9-1.9-2.7-2.7l-4.2-4.2c-.7-.7-1.9-.7-2.7 0l-1.4 1.5c-.7.7-.7 1.9 0 2.7l4.2 4.2zM33.6 8.8c.7-.7 1.9-.7 2.7 0l4.2 4.2c.7.7 1.9.7 2.7 0l1.4-1.4c.7-.7.7-1.9 0-2.7l-4.2-4.2c-.7-.7-1.9-1.9-2.7-2.7l-1.4-1.4c-.7-.7-1.9-.7-2.7 0l-1.5 1.4c-.7.7-1.9 1.9-2.7 2.7l-4.2 4.2c-.7.7-.7 1.9 0 2.7l1.4 1.4c.7.7 1.9.7 2.7 0l4.3-4.2zM8.8 36.2c-.7-.7-.7-1.9 0-2.7l4.2-4.2c.7-.7.7-1.9 0-2.7l-1.4-1.4c-.7-.7-1.9-.7-2.7 0l-4.2 4.2c-.7.7-1.9 1.9-2.7 2.7l-1.4 1.4c-.7.7-.7 1.9 0 2.7l1.4 1.5c.7.7 1.9 1.9 2.7 2.7l4.2 4.2c.7.7 1.9.7 2.7 0l1.4-1.4c.7-.7.7-1.9 0-2.7l-4.2-4.3z"/></svg>
    <span class="icon_contain">
      <svg class="icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 50" enable-background="new 0 0 50 50"><g><circle cx="4.7" cy="9.4" r="4.7"/><circle cx="4.7" cy="25" r="4.7"/><circle cx="4.7" cy="40.6" r="4.7"/><path d="M18.8 12.5h28.1c1.7 0 3.1-1.4 3.1-3.1s-1.4-3.1-3.1-3.1h-28.1c-1.7 0-3.1 1.4-3.1 3.1s1.3 3.1 3.1 3.1zM46.9 21.9h-28.1c-1.7 0-3.1 1.4-3.1 3.1s1.4 3.1 3.1 3.1h28.1c1.7 0 3.1-1.4 3.1-3.1s-1.4-3.1-3.1-3.1zM46.9 37.5h-28.1c-1.7 0-3.1 1.4-3.1 3.1s1.4 3.1 3.1 3.1h28.1c1.7 0 3.1-1.4 3.1-3.1s-1.4-3.1-3.1-3.1z"/></g></svg>
    </span>
    <a href="#">PROPESQ</a>  
  </li>
</ul>

</body>
</html>