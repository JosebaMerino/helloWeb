<%
	String titulo = "Inicio";
%>

<%@include file="includes/cabecera.jsp" %>
    <style>
        .fondo-gris {
            height: 100%;
            background-color: rgba(255, 255, 255, 0.733);
        }
    </style>
    <div class=" parallax ">
        <div class="fondo-gris">
            <h1>Ipartek HTML5</h1>
            <h2>Welcome to HTML</h2>
        </div>
    </div>
    <%@include file="includes/navegacion.jsp" %>
    
    <i class="fas fa-eye"></i>

    <section>
    <h3>Voluntario <span id="nombre">X</span></h3>
    <button onclick="buscarVoluntario()">¿Quien lee?</button>
</section>

<section>
    <h2>EMMET</h2>
    <a target="_blank" href="https://docs.emmet.io/cheat-sheet/"> Emmet cheatsheet</a>
</section>
<section>
    <h2>Tabla basica de HTML</h2>
    <a target="_blank" href="https://www.w3schools.com/html/html_tables.asp"> W3schools </a>
</section>
<section>
    <h2> Comprobar soporte </h2>
    <a href="https://caniuse.com/">Soprte de los navegadores para comprobar compatibilidad con navegadores JS, HTML y
        CSS</a>
    </section>

    <section>
        <h2> Tabla con los alumn@s que forman la clase </h2>
    <div>
        <table id="Tabla">
            <tr>
                <td> Aitor </td>
                <td>Iker </td>
            </tr>
            <tr>
                <td> Endika </td>
                <td> </td>
            </tr>
            <tr>
                <td> Iñigo </td>
                <td> Kiryl</td>
            </tr>
            <tr>
                <td>Juan Carlos </td>
                <td>Maria </td>
            </tr>
            <tr>
                <td>Alejandro </td>
                <td>Ana </td>
            </tr>
            <tr>
                <td>Cristian</td>
                <td> Erlantz </td>
            </tr>
            <tr>
                <td>Raúl</td>
                <td>F</td>
            </tr>
            <tr>
                <td>Joseba</td>
                <td>Mikel</td>
            </tr>
            <tr>
                <td onclick="alert('hola')" colspan="2" style="border: 20px solid black;"> Ander</td>
            </tr>
        </table>
    </div>
</section>
<section>
    <h2>Lorem, ipsum.</h2>
    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Impedit consequatur nobis quasi. Accusamus earum unde possimus suscipit fugiat rerum. Deleniti quam inventore eos minima praesentium incidunt soluta ratione ipsa doloremque?</p>
    <p>Rerum beatae, magni repellendus nostrum voluptates eum sint earum sed sequi corporis omnis enim quidem architecto aperiam quibusdam excepturi deleniti corrupti quas molestias autem nesciunt ratione unde voluptate? Ea, saepe!</p>
    <p>Quaerat totam mollitia accusamus dolor, rem at magni ab placeat, sint neque, officiis culpa maxime reprehenderit quam nulla aut? Iure omnis architecto quidem commodi impedit qui quam dolor dolores nihil?</p>
    <p>Rerum vel dolorem nam maiores quo quod officiis totam veniam reprehenderit. Cupiditate, illum ea. Dolores sed, perferendis molestias numquam consequuntur aliquam quia eos, adipisci at eligendi saepe doloremque similique quae!</p>
    <p>Sit praesentium fugiat nemo optio repellendus rem quo ex ullam ut! Repudiandae ad quo explicabo, sint dignissimos saepe deserunt voluptatem non quasi inventore cum ullam beatae, itaque nesciunt aliquid. Ipsam!</p>
    <p>Ullam consequuntur qui ad est perspiciatis natus, iure impedit? Quas deserunt veniam autem eveniet in incidunt saepe repellendus quod nulla sequi earum ex beatae, doloremque asperiores rem vel dolor nesciunt!</p>
    <p>Rerum porro ratione aliquid officia libero quo distinctio odio, commodi natus quis doloribus dolorem blanditiis rem consequuntur sed numquam facere doloremque a quisquam dignissimos. Nisi expedita magnam error illo ipsam.</p>
    <p>Nihil sed a et, tempore sapiente totam at facere illo. Id, corporis suscipit, maxime est recusandae ex animi laboriosam nisi accusantium perspiciatis fugiat incidunt facere dignissimos doloremque mollitia dolore totam!</p>
    <p>Neque, voluptate fugiat? Sequi ab vitae aliquid quod eum ut neque labore molestiae alias nemo voluptatum autem voluptatem doloribus delectus, dolore libero tempora obcaecati dicta corporis quibusdam cupiditate necessitatibus rem.</p>
    <p>Libero aspernatur velit laudantium atque voluptatem itaque, reprehenderit quos est, adipisci laborum numquam consectetur ullam. Corrupti fuga quasi necessitatibus, esse doloremque architecto cupiditate molestias tempora, fugiat modi obcaecati nesciunt ipsa!</p>
</section>
<%@include file="/includes/pie.jsp" %>