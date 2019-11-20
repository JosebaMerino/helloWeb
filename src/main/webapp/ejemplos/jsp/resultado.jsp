<h1>Resultado</h1>

<%-- <%
	// Recibir atributos del controlador
	int num1 = (int) request.getAttribute("op1");
	int num2 = (int) request.getAttribute("op2");

	int resultado = (int)request.getAttribute("resultado");
	String mensaje = (String) request.getAttribute("mensaje");
	
	if( mensaje == null) {
		out.print("<p>El resultado de " + num1 + " + " + num2 + " = "+ resultado +"</p>");
	} else {
		out.print(mensaje);
	}
	
%> --%>
<%
	float num1 = (float) request.getAttribute("op1");
	float num2 = (float) request.getAttribute("op2");

	float resultado = (float)request.getAttribute("resultado");
	String mensaje = (String) request.getAttribute("mensaje");
	
	String op = (String) request.getAttribute("op");
	
	
	if( mensaje == null) {
%>
		<p>El resultado de <%=num1 %> <%=op %> <%=num2 %> = <%=resultado %></p>
<%	} else { %>
		<p> <%=mensaje %> </p>
<%	} %>

<br>
<a href="calculadora.jsp"> Volver a calcular </a>