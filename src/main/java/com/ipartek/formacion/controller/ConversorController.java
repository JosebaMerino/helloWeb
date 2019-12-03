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
	private static final float METROS_PIES = 39.37f;
       
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
		try {
		
		String strMetros = request.getParameter("metros");
		String mensaje = null;
		
		boolean valido = false;
		
		float metros = 0;
		try {
			metros = Float.parseFloat(strMetros);
			valido = true;
		} catch (Exception e) {
			mensaje="Los metros introducidos no son validos";
		}
		
		request.setAttribute("metros", strMetros);
		request.setAttribute("resultado",(valido)? (metros * METROS_PIES) : null);
		request.setAttribute("mensaje", mensaje);
		} catch (Exception e) {
			request.setAttribute("Mensaje", "Ups, ha ocurrido un error en el servidor");
		} finally {
			request.getRequestDispatcher(base + vista).forward(request, response);			
		}
		// 3. Ir a JSP

	}

}
