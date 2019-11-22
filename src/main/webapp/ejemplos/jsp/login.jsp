<%
String mensaje = (String) request.getAttribute("mensaje");
String nombre = (String) request.getAttribute("nombre");
String recuerdame = (String) request.getAttribute("recuerdame");
String idioma = (String) request.getAttribute("idioma");

if(nombre == null) {
	nombre = "";
}

if(idioma == null) {
	idioma = "";
}
%>

<%
	String titulo = "Login";
%>

<%@include file="/includes/cabecera.jsp" %>
	<%@include file="/includes/navegacion.jsp" %>
    <style>
        input {
            margin-bottom: 1em;
        }
        select {
            margin-bottom: 1em;
        }

        input[type="text"], input[type="password"], select {
        	width: 100%;
            border: 1px solid grey ;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border-radius: 4px;
            box-sizing: border-box;
        }



        form {
        	max-width: 300px;
            border: 1px solid black;
            padding: 0.5em;
            margin: auto;
            background-color: #B0CEFE; 
        }
    </style>
    <a href="index.jsp"> Volver </a>
    <h1> Formulario basico de login</h1>
    <section>
        <form action="login" method="post">
        	<h2>Login</h2>
			        <%
				if (mensaje != null) {
					%>
					<p style="color: red"> <%=mensaje %></p>
					<%
				}
			%>
            <label for="nombre"> Nombre </label> <br>
            <input type="text" name="nombre" id="nombre" placeholder="Nombre de usuario" value="<%= nombre%>">
            <br>

            <label for="contrasena"> Contraseña </label> <br>
            <div class="password-container">
            <input type="password" name="contrasena" id="contrasena">
            <button id="mostrarBtn" onclick="mostrarContrasena(event)"><i class="fas fa-eye"></i></button>
            </div>
            <br>

            <label for="idioma"> Seleciona tu idioma</label> <br>
            <select name="idioma" id="idioma">
                <option value="es" <% out.print(idioma.equals("es") ? "selected": ""); %>>Español</option>
                <option value="eus"<% out.print(idioma.equals("eus") ? "selected": ""); %>>Euskera</option>
                <option value="en"<% out.print(idioma.equals("en") ? "selected": ""); %>>Ingles</option>
            </select>
            <br>

            <input type="checkbox" name="recuerdame" id="recuerdame" <% out.print(recuerdame == null? "" : "checked"); %>> Recuerdame <br>
            <input type="submit" value="Enviar">
        </form>
    </section>
    
    <script>
    function mostrarContrasena(event) {
    	console.log("Estoy aqui");
		var contrasenaEl = document.getElementById("contrasena");
		var contrasenaBtn = document.getElementById("mostrarBtn");
		if("password" == contrasenaEl.type) {
			contrasenaEl.type = "text";
			contrasenaBtn.innerHTML = '<i class="fas fa-eye-slash"></i>';
		} else {
			contrasenaEl.type = "password";
			contrasenaBtn.innerHTML = '<i class="fas fa-eye"></i>';
		}
		event.preventDefault();
    }
    </script>
    
<%@include file="/includes/pie.jsp" %>