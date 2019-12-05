<%
	String titulo = "Resumen";
%>

<%@include file="/includes/cabecera.jsp" %>

	<%@include file="/includes/navegacion.jsp" %>
   
   <main>
   	<div class="container">
   		<div class="row justify-content-center">
   			<div class="col-6">
   				<div class="card">
   					<div class="card-body">
   						<h1 class="card-title"> Pagina de ejemplo</h1>
   						<ul>
							<li>Tu navegador es: ${userAgent}</li>
							<li> Version del protocolo: ${ http }</li>
							<li> Nombre: ${nombre }</li>
							<li> Es movil: ${ esMovil? "si" : "no" }</li>
   						</ul>
   					</div>
   				</div>
   			</div>
   		</div>
   	</div>
   </main>


<%@include file="/includes/pie.jsp" %>
