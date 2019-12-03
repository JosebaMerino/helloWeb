<%
	String titulo = "Conversor";
%>

<%@include file="/includes/cabecera.jsp" %>

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
<%@include file="/includes/pie.jsp" %>