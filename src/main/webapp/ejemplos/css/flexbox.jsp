<%
	String titulo = "Flexbox";
%>

<%@include file="/includes/cabecera.jsp" %>

	<%@include file="/includes/navegacion.jsp" %>
   
<h1>Flexbox</h1>

	<section>

		<ul>
			<li><a href="https://css-tricks.com/snippets/css/a-guide-to-flexbox/" target="_blank"> Guia de flexbox</a></li>
			<li><a href="https://flexboxfroggy.com/#es" target="_blank"> Juego </a></li>
			<li><a href="http://www.falconmasters.com/web-design/sitio-web-layout-flexbox/"> Maquetar pagina web con flexbox</a></li>
		</ul>
		<p> Flex es una nueva forma de <code>display</code> de css3 totalmente nueva, para que las cajas no sean inline o block. Se comportaran de una nueva forma mucho mas flexible </p>
		<p> Sirve para distribuir los elementos contenidos (hijos) en una etiqueta (contenedor) con <code> display: flex</code> </p>
	
	<img src="images/flex-axes.png" alt="" height="500px"/>
	</section>
	
	<style>
	/* Estilos para practicas con flexbox */
	.container {
		border: 5px solid #000;
		width: 80%;
		margin: auto;
		
		/* FLEXBOX */
		display: flex; /* debe ser display flex */
		flex-direction: row; /* por defecto */
		flex-wrap: nowrap; /* por defecto acomoda todos los hijos (en una linea o columna depende de la direccion) sin desbordamiento.  */
		justify-content: center; /* quitar el width = 46%; de los hijos */
	}
	
	.container div {
		border: 5px solid teal;
		background-color: orange;
		width: 33%;
	    box-sizing: border-box;
	    margin: 5px;
	    min-height: 80px;
	    text-align: center;
		/* FLEXBOX */
	}
	</style>
	
	<div class="container">
		<div> hijo1 </div>
		<div> hijo2</div>
		<div> hijo3</div>
		<div> hijo4</div>
		<div> hijo5</div>
		<div> hijo6</div>
	</div>
	
<%@include file="/includes/pie.jsp" %>