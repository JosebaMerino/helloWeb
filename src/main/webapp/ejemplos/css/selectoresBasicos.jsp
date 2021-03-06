<%
	String titulo = "Selectores basicos";
%>

<%@include file="/includes/cabecera.jsp" %>

	<%@include file="/includes/navegacion.jsp" %>

	<h1>Selectores basicos</h1>
	<section>
    	<h2> Tipos de selectores</h2>

    	<p>
	        En este v�deo puedes ver los tipos de selectores, identificadores, clases y pseudoclases:Videotutorial
	    </p>
	    <iframe src="https://www.youtube.com/embed/ARaU6uGOa_k" frameborder="0"
	        allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	</section>
    <section>
    	<h2> Selector decendente A B</h2>
    	<div class="container">
	        <p><span>Hola </span>Vamos a dar estilo solo a estos parrafos que estan dentro de un <code>div .container</code>
	        </p>
	        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat, cupiditate praesentium! Molestias
	            assumenda accusamus quos blanditiis dolorum labore. Odit adipisci cum voluptatibus enim sapiente, recusandae
	            suscipit vel laborum ad eius!</p>
	        <p class="especial">Lorem <span> ipsum dolor</span> sit amet consectetur adipisicing elit. Asperiores eaque
	            obcaecati explicabo consequatur vero rerum libero quaerat accusamus nemo, exercitationem cupiditate
	            reiciendis aut tempora, deleniti inventore laudantium tempore enim labore.</p>
    	</div>
	</section>
    <section>
	    <h2> Selector de clase</h2>
	    <div>
	        <p class="color-rojo"> Hola soy rojo porque tengo la clase color-rojo</p>
	        <p> Yo no soy rojo pero mi amigo <span class="color-rojo">SI</span></p>
	        <p> Pues mi <span class="color-verde"> span</span> deberia ser verde</p>
	        <p class="color-verde"> Yo aunque sea de clase-verde yo no soy verde porque no estoy dentro de un parrafo</p>
	    </div>
    </section>
    <section>
	    <h2> Selector de ID</h2>
	    <div>
	        <p id="id1"> Hola tengo id id1</p>
	        <p> Yo tengo un <span id="id2">span</span> con id2</p>
	    </div>
    </section>
    <style>
        /* Selector descendente
        */
        .container p {
            color: orange;
        }

        .container p span {
            background: black;
        }

        /* Selecciona solo los parrafos con la clase "especial" no es descendiente*/
        p.especial {
            color: purple;
            background-color: whitesmoke;
        }

        p .especial {
            font-size: 2em;
            font-weight: 600;
            /* bold */
        }


        /* selector de clase */
        .color-rojo {
            color: red;
        }

        p .color-verde {
            color: green;
        }


        /* selector de ID */
        #id1 {
            color: red;
            background-color: black;
        }

        #id2 {
            color: green;
            background-color: black;
        }
    </style>
<%@include file="/includes/pie.jsp" %>