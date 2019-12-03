<%
	String titulo = "Conversor";
%>

<%@include file="/includes/cabecera.jsp" %>

    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css">
<%@include file="/includes/navegacion.jsp" %>

    <%
    String mensaje = (String) request.getAttribute("mensaje");
    
    %>
    <main class="container mt-3 main">
        <div class="row justify-content-center">
            <div class="col-6">
                <div class="card">
                <div class="card-body">
                        <h5 class="card-title"> Convertir de metros a pies </h5>
                        
                        <div class="alert alert-danger <% 
                        if(mensaje == null) {
                        	out.print("d-none");
                        }
                        %>">
                        <%=mensaje%>
                        </div>
                        <form action="convertir" method="post">
                        	<label for="metros"> Metros: </label>
                        	
                            <div class="form-group">
                                <input
                                	name="metros" id="metros" 
                                	type="text" class="form-control"
                                	value="${metros}"	
                                >
                            </div>
                            <p class="card-text">
                            <% 
								if( request.getAttribute("resultado") != null) {
									float resultado = (float) request.getAttribute("resultado");
									out.print("Pulgadas: " + resultado);
								}
							%>
                            </p>
                            <button class="btn btn-block btn-primary"> Calcular </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <!-- .container -->

    <script src="js/jquery-3.4.1.slim.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.bundle.js"></script>
<%@include file="/includes/pie.jsp" %>