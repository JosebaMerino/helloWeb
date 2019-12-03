package com.ipartek.formacion.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ConversorController
 */
@WebServlet("/convertir")
public class ConversorController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConversorController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String base = "/ejemplos/jsp/";
		String vista = "conversor.jsp";
		
		String strMetros = (String) request.getParameter("metros");
		String mensaje = null;
		
		float metros = 0;
		try {
			metros = Float.parseFloat(strMetros);
		} catch (Exception e) {
			mensaje="Los metros introducidos no son validos";
		}
		
		request.setAttribute("metros", metros);
		request.setAttribute("resultado", (metros * 39.37f));
		request.setAttribute("mensaje", mensaje);
		
		// 3. Ir a JSP
		request.getRequestDispatcher(base + vista).forward(request, response);

	}

}
