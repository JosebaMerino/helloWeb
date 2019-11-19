package com.ipartek.formacion.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginControlador
 */
@WebServlet("/login")
public class LoginControlador extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginControlador() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nombre = request.getParameter("nombre");
		String contrasena = request.getParameter("contrasena");
		String idioma = request.getParameter("idioma");
		String recuerdame = request.getParameter("recuerdame");
		
		String mensajeExito = "";
		String mensajeError = "";
		
		switch (idioma) {
		case "es":
			mensajeExito = "Bienvenido";
			mensajeError = "Usuario o contraseña no valido";
			break;
		case "eus":
			mensajeExito = "Ongietorri";
			mensajeError = "Erabiltzaile izena edo pasahitza ez dira zuzenak";
			break;
		case "en": 
			mensajeExito = "Welcome";
			mensajeError = "Username or password not valid";
			break;
		default:
			break;
		}
		
		
		if( nombre.equalsIgnoreCase("admin") && contrasena.equals("admin")) {

			request.setAttribute("mensaje", mensajeExito);
			request.setAttribute("recuerdame", (recuerdame == null? false : true));
			request.getRequestDispatcher("login-exito.jsp").forward(request, response);
		} else {
			request.setAttribute("nombre", nombre);
			request.setAttribute("idioma", idioma);
			request.setAttribute("recuerdame", recuerdame);
			request.setAttribute("mensaje", mensajeError);
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		

	}

}
