package com.ipartek.formacion.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloController2
 * 
 * Vamos a realizar el mismo ejercicio pero con una JSP para la response automatica.
 * 
 * @see HelloController para ver lo mismo sin JSP
 */
@WebServlet("/ejemplo2")
public class HelloController2 extends HttpServlet {
	private static final String NOMBRE= "pepe";
	private static final String PASSWORD = "123456";
	
	private static final String TETERA = "tetera";

	private static final String VISTA_RESUMEN = "/ejemplos/jsp/resumen.jsp";
	private static final String VISTA_NO_AUTORIZADO = "/ejemplos/jsp/errores/no-autorizado.jsp";
	private static final String VISTA_TETERA = "/ejemplos/jsp/errores/tetera.jsp";

	private static final long serialVersionUID = 1L;
      
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// Variables internas
		String vista = "";
		
		// Peticion del cliente
		String userAgent = request.getHeader("User-Agent");
		String http = request.getProtocol();
		
		// Parametros
		
		String nombre = request.getParameter("nombre");
		String password = request.getParameter("password");
		
		if (NOMBRE.equals(nombre) && PASSWORD.equals(password)) {
			vista = VISTA_RESUMEN;
			
			request.setAttribute("userAgent", userAgent);
			request.setAttribute("http", http);
			request.setAttribute("nombre", nombre);
			request.setAttribute("esMovil", userAgent.toLowerCase().contains("mobile"));
		} else if(TETERA.equals(nombre)) {
			vista = VISTA_TETERA;
		} else {
			vista = VISTA_NO_AUTORIZADO;
		}
		
		// request interna del servidor
		request.getRequestDispatcher(vista).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	// Peticion del cliente

	
	}
}
