<p> ${mensaje} </p>
<%
	Boolean recuerdame = (Boolean) request.getAttribute("recuerdame");  
	String mensaje = (String) request.getAttribute("mensaje");
%>

<p> <%=mensaje %></p>


<% 
	if(recuerdame) {
%>
	<p> Se te recordar� cuando vuelvas  </p>
<%  } else { %>
	<p> No se te recordar� cuando vuelvas</p>
<% 	} %>

<a href="index.jsp"> Volver al Index</a>