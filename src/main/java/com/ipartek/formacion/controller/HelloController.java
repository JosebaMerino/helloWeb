package com.ipartek.formacion.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloController
 */
@WebServlet("/ejemplo1")
public class HelloController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Peticion del cliente
		String userAgent = request.getHeader("User-Agent");
		String http = request.getProtocol();
		
		// Parametros
		String nombre = request.getParameter("nombre");
		String password = request.getParameter("password");
		/* nombre: pepe
		 * password: 123456
		 * 
		 * 
		 * 
		 * nombre: tetera
		 * error 418
		 * */
		
		
		boolean valido = "pepe".equals(nombre) && "123456".equals(password);
		
		// respuesta
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		
		//set status code
		if (valido) {
	        response.setStatus(200);
		} else
		if (!valido && "tetera".equals(nombre)) {
	        response.setStatus(418);
		} else {
	        response.setStatus(401);
		}
		
		PrintWriter out = response.getWriter();
		
		
		out.println("<html lang=\"es\">");
		out.println("<head>");
		out.println("<meta charset=\"utf-8\">");
		out.println("<title>Título del sitio</title>");
		out.println("</head>");
		out.println("<body>");
		
		if(valido) {
			out.println("<h1> Pagina de ejemplo </h1>");
			
			out.println("<ul>");		
			out.println("<li> Tu navegador es: "+ userAgent +"</li>");	
			out.println("<li> Version de protocolo: "+ http +" </li");			
			out.println("<li> Nombre: "+ nombre +" </li>");
			out.println("<li> Es movil: "+ userAgent.toLowerCase().contains("mobile") +" </li>");
			out.println("</ul>");
		} else {
			out.println("<h1> Ha ocurrido un error</h1>");
			if("tetera".equals(nombre)) {
				out.println("<p> Eres una tetera, WTF? </p>");
			} else {
				out.println("<p> No estas autorizado </p>");
			}
		}
		
		// AH
		
		out.println("</body>");
		out.println("</html>");
		
		out.flush();
		
		// por defecto response code 200
		
		//.append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
