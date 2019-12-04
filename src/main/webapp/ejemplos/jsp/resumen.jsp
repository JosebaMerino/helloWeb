<%
	String titulo = "Animaciones";
%>

<%@include file="/includes/cabecera.jsp" %>

	<%@include file="/includes/navegacion.jsp" %>
   
	<h1> Pagina de ejemplo</h1>
	<ul>
		<li>Tu navegador es: ${userAgent}</li>
		<li> Version del protocolo: ${ http }</li>
		<li> Nombre: ${nombre }</li>
		<li> Es movil: ${ esMovil? "si" : "no" }</li>
	</ul>

<%@include file="/includes/pie.jsp" %>
