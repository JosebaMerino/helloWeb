<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html> <!-- HTML 5 -->
<html lang="es">
<head>
    <meta charset="UTF-8"> <!-- Codificacion de caracteres -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" > <!-- Para que sea responsive -->
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>HelloWeb | <%=titulo %></title>
    <base href="/helloweb/">
    
    <link rel="icon" type="image/png" href="images/logo.png" />
    <!-- Font awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css" />
    <!-- Estilos -->
    <link rel="stylesheet" href="css/styles.css?time=<%= System.currentTimeMillis()%>">
</head>
<body id="inicio">