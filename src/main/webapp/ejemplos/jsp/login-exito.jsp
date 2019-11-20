<%
	String titulo = "Login exito";
%>

<%@include file="/includes/cabecera.jsp" %>

	<%@include file="/includes/navegacion.jsp" %>
	<h1> Login realizado con exito </h1>
		<section>
			<!-- <p> ${mensaje} </p>  -->
			<%
				Boolean recuerdame = (Boolean) request.getAttribute("recuerdame");  
				String mensaje = (String) request.getAttribute("mensaje");
			%>
			
			<p> <%=mensaje %></p>
			
			
			<% 
				if(recuerdame) {
			%>
				<p> Se te recordará cuando vuelvas  </p>
			<%  } else { %>
				<p> No se te recordará cuando vuelvas</p>
			<% 	} %>
		</section>
<%@include file="/includes/pie.jsp" %>