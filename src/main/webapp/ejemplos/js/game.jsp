<%
	String titulo = "Arkanoid";
%>

<%@include file="/includes/cabecera.jsp" %>

	<%@include file="/includes/navegacion.jsp" %>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Arkanoid</title>
    <base href="/pruebatecnica/">
    <link rel="stylesheet" href="css/game.css">
</head>
<body>
    <a href="https://developer.mozilla.org/es/docs/Games/Workflows/Famoso_juego_2D_usando_JavaScript_puro">Desarrollo del juego</a>
    <a href="https://developer.mozilla.org/es/docs/Games/Workflows/Famoso_juego_2D_usando_JavaScript_puro/Construye_grupo_bloques"> Aqui me he quedado</a>
    <h1> Arkanoid </h1>
    <canvas id="myCanvas" width="480" height="320"></canvas>
    <p>
        P - pausar/reanudar el juego
    </p>

    <script src="js/game.js"></script>
<%@include file="/includes/pie.jsp" %>