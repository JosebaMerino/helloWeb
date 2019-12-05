<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html> <!-- HTML 5 -->
<html lang="es">
<head>
    <meta charset="UTF-8"> <!-- Codificacion de caracteres -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" > <!-- Para que sea responsive -->
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>HelloWeb | <%=titulo %></title>
    <base href="/helloweb/">

    <link rel="icon" type="image/png" href="images/logo.png" /> <!-- Favicon -->

    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css"/>				<!-- Data tables -->
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.dataTables.min.css"/>	<!-- Data tables -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/select/1.3.1/css/select.dataTables.min.css"/>


    <link rel="stylesheet" href="css/bootstrap.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css" /> <!-- Font awesome -->
    <!-- Estilos personales -->
    <link rel="stylesheet" href="css/styles.css?time=<%= System.currentTimeMillis()%>">
</head>
<body id="inicio">

<section id="usuario">
	<%
	 String usuarioSesion = (String) session.getAttribute("usuarioLogeado");
	 String idiomaSesion = (String) session.getAttribute("idioma");
	 if(usuarioSesion == null) { %>
		<p> No has iniciado sesion, <a href="ejemplos/jsp/login.jsp"> Iniciar sesion</a> </p>
	<% } else { %>
		<p>Usuario: <%= usuarioSesion %></p>
		<p>Idioma: <%= idiomaSesion %></p>
		<a href="logout"> Logout</a>
	<% } %>
</section>
