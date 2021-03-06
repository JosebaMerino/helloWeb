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
            border: 1px solid grey ;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #2f3e9e;
            display: inline-block;
            box-sizing: border-box;
            padding: 12px 20px;
            border-radius: 4px;
            border: 0em;
            color: white;
            
            
        }

        input[type="submit"]:hover {
            background-color: #202a6e;
            display: inline-block;
            box-sizing: border-box;
            padding: 12px 20px;
            border-radius: 4px;
            border: 0 ;
            
        }

        form {
            border: 1px solid black;
            padding: 20px;
            margin: 20px;
        }
    </style>
    <h1> Formulario basico de login</h1>
    <section>
        <form action=""">
            <label for="nombre"> Nombre </label> <br>
            <input type="text" name="nombre" id="nombre">
            <br>

            <label for="contrasena"> Contraseña </label> <br>
            <input type="password" name="contrasena" id="contrasena">
            <br>

            <label for="idioma"> Seleciona tu idioma</label> <br>
            <select name="idioma" id="idioma">
                <option value="es">Español</option>
                <option value="eus">Euskera</option>
                <option value="en">Ingles</option>
            </select>
            <br>

            <input type="checkbox" name="recuerdame" id="recuerdame"> Recuerdame <br>
            <input type="submit" value="Enviar">
        </form>
    </section>
<%@include file="/includes/pie.jsp" %>