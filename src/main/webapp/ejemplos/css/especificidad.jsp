<%
	String titulo = "Especificidad";
%>

<%@include file="/includes/cabecera.jsp" %>

<%@include file="/includes/navegacion.jsp" %>

    <h1>CSS Básico</h1>
    <h2>Especificidad de CSS</h2>
    <h3>Inspeccionar con las herramientas de desarrollador para ver los estilos de los parrafos</h3>
    <div>
        <!-- Poner estilos en linea es bastante incorrecto -->
        <p style="color: red; font-size: 20px;"> Hola</p>
        <p id="texto-verde" class="texto-rojo">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Expedita placeat saepe, ea hic vero reprehenderit repellendus deleniti, perspiciatis voluptate quidem doloribus voluptatum? Iure, quisquam sapiente asperiores veritatis dicta mollitia soluta.</p>
        <p>Ipsa iure dolorem molestiae blanditiis ratione accusantium quo, doloremque quisquam repudiandae, eius, ad quae eveniet similique laborum? Distinctio rerum perferendis sapiente, blanditiis, itaque corrupti earum, saepe exercitationem neque ipsum eligendi!</p>
        <p>Sunt excepturi ut unde doloremque quas tempora voluptas temporibus sit similique tenetur molestiae vitae, ea laborum obcaecati expedita modi tempore quo quisquam voluptatem sapiente. Blanditiis recusandae doloremque repudiandae sunt necessitatibus!</p>
        <p>Enim dolore repudiandae dolorem reprehenderit incidunt harum sed dignissimos maxime quasi cupiditate culpa, saepe, ipsum voluptate consequuntur, sequi tenetur natus id quibusdam repellat! Facere libero non ea distinctio repudiandae debitis.</p>
        <p>Maxime minima natus molestias dolorum iusto praesentium, repudiandae velit reprehenderit, cumque earum dignissimos. Reiciendis dolorum explicabo, libero adipisci veniam sed soluta perspiciatis? Mollitia porro dolore aut unde. Perspiciatis, animi accusantium?</p>
    </div>
    <style>
        /*
        Tambien se pueden definir estilos dentro del propio HTML
        */
        p {
            color: teal;
        }

        .texto-rojo {
            color: red;
        }

        #texto-verde {
            color: green;
        }

        .super-importante {
            color: lightblue !important; /* es la más importante */
        }
    </style>

<%@include file="/includes/pie.jsp" %>