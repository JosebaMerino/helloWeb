<%
	String titulo = "Media querys";
%>

<%@include file="/includes/cabecera.jsp" %>

	<%@include file="/includes/navegacion.jsp" %>
   
    <h1>Media querys</h1>

    <section>
    	<p>Una media query consiste en un tipo de medio y al menos una consulta que limita las hojas de estilo utilizando caracter�sticas del medio como ancho, alto y color. Se entiende como un m�dulo CSS3 que permite adaptar la representaci�n del contenido a caracter�sticas del dispositivo. A�adido en CSS3, las media queries dejan que la presentaci�n del contenido se adapte a un rango espec�fico de dispositivos de salida sin tener que cambiar el contenido en s�.</p>
    </section>

	<style>
		/* table*/
		@media screen and (max-width: 768px) and (min-width: 426px){
			section {
				background-color: red;
			}
			
			h1 {
				color: red;
			}
		}

	/* movil */
		@media screen and (max-width: 425px) {
			section {
				background-color: pink;
			}
			
			h1 {
				color: pink;
			}
		}
	
	</style>

<%@include file="/includes/pie.jsp" %>