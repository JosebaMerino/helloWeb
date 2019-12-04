<%
	String titulo = "Ejemplo responses";
%>

<%@include file="/includes/cabecera.jsp" %>

	<%@include file="/includes/navegacion.jsp" %>
	
<main>
<div class="container">
<h1> Ejemplo 1</h1>
<h5> Para entrar correctamente introduce el usuario pepe y la contraseña 123456. Para recibir el codigo de error de la tetera se debe introducir el nombre tetera </h5>
	<div class="row justify-content-center">
		<div class="col-6">
		<div class="card mt-3">
			<div class="card-body">
				<h4 class="card-title h4"> Ejemplo SERVLET</h4>
				<p class="card-text"> En este ejemplo se implementa un SERVLET que recibe unos parametros por GET </p>
				<p class="card-text">Los parametros son <code>nombre</code> y <code>password</code>.</p>
				<p class="card-text"> Si el nombre es pepe y la contraseña es 123456 estará autorizado.</p>
				<p class="card-text"> Si no, se le mostrará un texto de error y se mandará el código 401</p>
				<p class="card-text"> Si el nombre es tetera se le mostrará un texto de error y se mandará el error 418</p>
				
				<p class="card-text text-muted"> Todo esto sin usar jsp</p>
				
				<a href="ejemplo1?nombre=joseba&password=12"> Ejemplo con usuario y contraseña no autorizado</a>
				<br />
				<a href="ejemplo1?nombre=tetera"> Ejemplo de tetera</a>
				<br />
				<a href="ejemplo1?nombre=pepe&password=123456"> Ejemplo de usuario autorizado</a>
			</div>
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
		<div class="col-6">
			<div class="card mt-3">
				<div class="card-body">
					<h4 class="card-title h4"> Ejemplo SERVLET + JSP</h4>
					<p class="card-text"> En este ejemplo se implementa un SERVLET que recibe unos parametros por GET e imprime los resultados con la ayuda de un JSP </p>
					<p class="card-text">Los parametros son <code>nombre</code> y <code>password</code>.</p>
					<p class="card-text"> Si el nombre es pepe y la contraseña es 123456 estará autorizado y se le enviará a la pagina <code>resumen.jsp</code>.</p>
					<p class="card-text"> Si no, se le mostrará un texto de error y se le enviará a la página <code>no-autorizado.jsp</code> </p>
					<p class="card-text"> Si el nombre es tetera se le mostrará un texto de error y se enviará a la página <code>tetera.jsp</code></p>
					
					<a href="ejemplo2?nombre=joseba&password=12"> Ejemplo con usuario y contraseña no autorizado</a>
					<br />
					<a href="ejemplo2?nombre=tetera"> Ejemplo de tetera</a>
					<br />
					<a href="ejemplo2?nombre=pepe&password=123456"> Ejemplo de usuario autorizado</a>
				</div>
				<div class="card-body">
					<form action="ejemplo2" method="get">
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

</main>

<%@include file="/includes/pie.jsp" %>