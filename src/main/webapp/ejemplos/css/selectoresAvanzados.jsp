<%
	String titulo = "Selectores avanzados";
%>

<%@include file="/includes/cabecera.jsp" %>

	<%@include file="/includes/navegacion.jsp" %>
    <div class="main">

        <p hidden>
            <pre hidden>
            atributo content
            Un ejemplo: 
            * after
            * before
            * first-letter -> Hacer la primera letra mas grande y cambiar de color
            * 
            </pre>
        </p>
        <h1> Selectores avanzados </h1>
        <section>
            <h2><a href="http://www.campus.formacion.ipartek.com/moodle/mod/page/view.php?id=2187" target="_blank"> Selectores avanzados </a></h2>
            <h3> Selectores de hijos</h3>
            <div id="selectoresHijos">
                <p> Buenas soy su primer y unico hijo</p>
                <span>Soy su hijo pero soy un spam y el estilo solo afecta a los P</span>
            </div>

            <h3>Selector adyacente</h3>
            <div id="selector-adyacente">
                <p>Hola </p>
                <span> Soy adyacente al de arriba, por eso soy rojo</span>
            </div>

            <h3> Selector de atributo </h3>
            <div id="selector-atributo">
                <p data-iden="1">Lorem ipsum dolor sit amet.</p>
                <p data-iden="2">Quisquam autem ex molestias ab.</p>
                <p data-iden="2">Vitae aliquam nihil provident quia.</p>
                <p data-iden="3">Asperiores nobis natus dolor consequatur?</p>
                <p data-iden="1">Numquam fugit ratione eum aliquam.</p>
            </div>
        </section>
        <section>
            <h2><a href="http://www.campus.formacion.ipartek.com/moodle/mod/page/view.php?id=2188" target="_blank"> PSEUDO SELECTORES</a></h2>
            <h3>Before</h3>
            <div>
                <p id="pBefore"> Va a poner algo antes</p>
            </div>

            <h3>After</h3>
            <div>
                <p id="pAfter"> Va a poner algo despues</p>
            </div>

            <h3> First letter</h3>
            <div id="pseudo_first-letter">
                <p>Lorem ipsum dolor sit.</p>
                <p>Praesentium odio consectetur rem!</p>
                <p>Reiciendis qui accusantium porro.</p>
                <p>Sit quae molestias hic!</p>
                <p>Repudiandae aperiam non voluptatum!</p>
            </div>

            <h3> First line </h3>
            <div id="pseudo_line">
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus eaque nisi iste ratione sint sunt, nostrum soluta quis ex delectus labore, consequatur expedita quas veniam quidem alias eligendi ut voluptates, numquam natus vel ipsum unde autem! Repudiandae enim deleniti perspiciatis, eius, possimus laborum quaerat, exercitationem similique voluptatem voluptate fuga vitae numquam beatae voluptatum nulla. Earum ex laboriosam animi excepturi. Aliquid inventore facilis laborum placeat modi aperiam dignissimos, dolore consequatur labore perspiciatis veniam iste tenetur suscipit enim quidem? Suscipit, dolorum! Modi accusantium repudiandae omnis, voluptatibus, voluptatum rerum harum fugiat, quis officiis labore earum possimus eligendi. Provident minus qui perspiciatis aliquid laboriosam.</p>
                <p>Facilis ipsam explicabo tempore itaque veritatis, sequi incidunt libero officia, ea, consequuntur rem. Sequi nobis quo ratione dolor minus! In magnam, aliquid et iste voluptate itaque dicta ipsa, eos aliquam sequi exercitationem neque? Exercitationem iusto aspernatur quae veniam, culpa eius non enim? Officia rerum accusantium saepe illo. Aliquam adipisci dolore asperiores voluptates distinctio id excepturi, debitis quas quae saepe repellat error porro doloribus ea cupiditate voluptas similique neque sed temporibus provident nobis sapiente? Quod possimus porro nemo! Suscipit magnam neque fugit amet nesciunt at aperiam voluptates nostrum! Aliquid reiciendis nobis, consequatur quae iste, temporibus voluptate quas tempora nesciunt, pariatur quo?</p>
            </div>

            <h3> Selection </h3>
            <div id="pseudo_selection">
                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quos ea sapiente cum asperiores. Quia quaerat deleniti eaque maxime delectus fugit velit, corrupti excepturi rem officia! Error architecto recusandae ipsum sint.</p>
                <p>Provident libero error tempora animi? Et eaque accusamus ratione quia sequi corporis. Vel, sit reiciendis pariatur distinctio voluptate odio dignissimos rerum ducimus ipsa vero obcaecati provident vitae inventore accusantium! Exercitationem.</p>
                <p>Ad aliquam impedit fugiat fuga, molestias dolorem eligendi? Doloremque consectetur sed amet, voluptates exercitationem, atque suscipit voluptas modi laborum mollitia fuga quos id ipsa dolor nobis doloribus tempora accusantium perspiciatis.</p>
            </div>

            <h3> Empty </h3>
            <div id="pseudo_empty">
                <div></div>
                <div>Como tengo contenido no me muestro con fondo rojo, pero mis amigos si</div>
                <div></div>
            </div>

            <h3> First child</h3>
            <div id="pseudo_first_child">
                <p>Lorem ipsum dolor sit amet.</p>
                <p>Quod porro fugit architecto saepe!</p>
                <p>Laboriosam quisquam ducimus provident beatae?</p>
                <p>Veniam molestias vero necessitatibus rem.</p>
            </div>

            <h3> First of type </h3>
            <div id="pseudo_first_of_type">
                <p>Lorem, ipsum dolor.</p>
                <p>Reiciendis, qui aliquam.</p>
                <p>Eum, hic. Accusantium.</p>
                <span>Lorem, ipsum dolor.</span>
                <span>Fugiat, ratione necessitatibus!</span>
                <span>Neque, eveniet? Iure.</span>
                <div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Autem incidunt, unde fuga vero quae itaque velit? Autem culpa excepturi esse qui impedit mollitia sit? Molestias nostrum provident ducimus vel dolor.</div>
                <div>Omnis dolorem quas perspiciatis dolores perferendis quam provident nesciunt molestiae similique, ipsam dolorum in ea vel nobis pariatur eveniet cumque, eos iure temporibus facilis architecto deserunt. Fugiat eaque optio officiis!</div>
                <div>Dicta a molestiae harum. Voluptatem repudiandae, ipsa perferendis odio nisi optio nemo molestiae atque repellendus tenetur. Nostrum perferendis quod nihil, quaerat distinctio ratione, similique explicabo ullam aliquid ipsum obcaecati suscipit?</div>
            </div>

            <h3> Hover </h3>
            <div id="pseudo_hover">
                <p>Lorem, ipsum dolor.</p>
                <p>Exercitationem, natus ducimus!</p>
                <p>Provident, doloribus libero?</p>
            </div>

            <h3> Nth child</h3>
            <div id="pseudo_nth_child">
                <p>Lorem, ipsum dolor.</p>
                <p>Sunt, nisi cupiditate.</p>
                <p>Tempore, voluptates vel.</p>
                <p>Modi, ipsum quibusdam.</p>
                <p>Nihil, dicta rerum?</p>
                <p>Dolorem, natus nihil.</p>
                <p>Quidem, magnam expedita?</p>
                <p>Commodi, saepe minima.</p>
                <p>Repudiandae, velit illum.</p>
                <p>Maxime, explicabo officia?</p>
            </div>
        </section>
    </div>
    <style>
        .main {
            margin: 20px;
            padding: 20px;
            background-color: rgba(128, 128, 128, 0.144);
        }

        /* Selectores de hijos */
        #selectoresHijos {
            color: green;
        }

        #selectoresHijos>p {
            color: red;
        }

        /* Selector adyacente */
        #selector-adyacente p + span {
            color: red;
        }

        /* Selector de atributos */

        #selector-atributo *[data-iden="1"] {
            color: blue;
        }

        #selector-atributo *[data-iden="2"] {
            color: green;
        }
        #selector-atributo *[data-iden="3"] {
            color: pink;
        }

        /* PSEUDOSELECTORES */
        /* BEFORE */
        #pBefore::before {
            content: 'BEFORE';
            color: red;
        }

        /* AFTER */
        #pAfter::after {
            content: 'AFTER';
            color: greenyellow;
        }

        /* FIRST-LETTER*/
        #pseudo_first-letter *::first-letter {
            font-size: 2em;
            color: rgb(228, 0, 0);
        }

        /* FIRST LINE */
        #pseudo_line *::first-line {
            color: red;
        }

        /* SELECTION */

        #pseudo_selection *::selection {
            background-color: black;
            color: rgb(0, 252, 0);
        }

        /* EMPTY */
        #pseudo_empty *:empty {
            display: inline-block;
            height: 1em;
            width: 1em;
            background-color: red;
            border: 0.5em solid black;
        }

        /* FIRST CHILD*/
        #pseudo_first_child *:first-child {
            color: green;
        }

        /* FIRST OF TYPE */
        #pseudo_first_of_type *:first-of-type {
            background-color: aqua;
        }

        /* HOVER */
        #pseudo_hover *:hover {
            color: white;
            background-color: blue;
        }

        /* NTH CHILD*/
        #pseudo_nth_child *:nth-child(2n) {
            color: red;
        }
        #pseudo_nth_child *:nth-child(3) {
            color: green;
        }
    </style>
<%@include file="/includes/pie.jsp" %>