<%
	String titulo = "No autorizado";
%>

<%@include file="/includes/cabecera.jsp" %>

	<%@include file="/includes/navegacion.jsp" %>
   
   <main>
   	<div class="container">
   		<div class="row justify-content-center">
   			<div class="col-6">
   				<div class="card">
   					<div class="card-body">
   						<h1 class="card-title"> No autorizado</h1>
   						<p class="card-text">Su correo o contraseña no parecen las de una persona autorizada</p>
   					</div>
   				</div>
   			</div>
   		</div>
   	</div>
   </main>


<%@include file="/includes/pie.jsp" %>