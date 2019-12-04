<%
	String titulo = "Ejemplo1";
%>

<%@include file="/includes/cabecera.jsp" %>

	<%@include file="/includes/navegacion.jsp" %>
	
<div class="container">
<h1> Ejemplo 1</h1>
<h5> Para entrar correctamente introduce el usuario pepe y la contraseña 123456. Para recibir el codigo de error de la tetera se debe introducir el nombre tetera </h5>

	<div class="row justify-content-center">
		<div class="col-6">
		<div class="card mt-3">
			<div class="card-body">
		<form action="ejemplo1" method="get">
			<label for="nombre"> Nombre: </label>
			<div class="form-group">
				<input 
					id="nombre" name="nombre"
					type="text" 
					class="form-control"
					placeholder="Introduce un nombre de usuario"
				/>
			</div>
			
			<label for="password"> Contraseña: </label>
			<div class="form-group">
				<input 
					id="password" name="password"
					type="text"
					class="form-control"
					placeholder="Introduce una contraseña"
				/>
			</div>
			
			<button type="submit" class="btn btn-primary btn-block"> Enviar  </button>
		</form>
		</div>
		</div>
		</div>
	</div>
</div>

<%@include file="/includes/pie.jsp" %>