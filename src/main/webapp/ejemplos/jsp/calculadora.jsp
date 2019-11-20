<%
	String titulo = "Animaciones";
%>

<%@include file="/includes/cabecera.jsp" %>

	<%@include file="/includes/navegacion.jsp" %>
	
<h1>Calculadora</h1>
	<section>
		<form action="sumar" method="post">
		
		    <label for="operacion"></label><br>
		    <input type="radio" name="op" value="1" checked>
		    Sumar
		    <br>
		    <input type="radio" name="op" value="2">
		    Restar
		    <br>
		    <input type="radio" name="op" value="3">
		    Multiplicar
		    <br>
		    <input type="radio" name="op" value="4">
		    Dividir
		    <br>
			<input type="number" name="op1" placeholder="numero 1" required autofocus>
			<br>
			<input type="number" name="op2" placeholder="numero 2" required>
			<br>
		
			<input type="submit" value="Calcular">
			
		</form>
	</section>

<%@include file="/includes/pie.jsp" %>