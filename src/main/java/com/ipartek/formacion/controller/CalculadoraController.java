package com.ipartek.formacion.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CalculadoraController
 */
@WebServlet("/sumar")
public class CalculadoraController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CalculadoraController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//recibir parametros del formulario
		String num1 = request.getParameter("op1");
		String num2 = request.getParameter("op2");
		
		String op = request.getParameter("op");
		
		int opNum = Integer.parseInt(op);
		
		float numero1 = 0;
		float numero2 = 0;
		float resultado = 0;
		String mensaje = null;
		
		try {
			numero1 = Float.parseFloat(num1);
			numero2 = Float.parseFloat(num2);
			switch (opNum) {
			// +
			case 1:
				resultado = numero1 + numero2;
				request.setAttribute("op", "+");
				break;
			// -
			case 2:
				resultado = numero1 - numero2;
				request.setAttribute("op", "-");
				break;
			// *
			case 3:
				resultado = numero1 * numero2;
				request.setAttribute("op", "*");
				break;
			// %
			case 4:
				resultado = numero1 / numero2;
				request.setAttribute("op", "%");
				break;
			default:
				break;
			}
		} catch (ArithmeticException e) {
			mensaje = "No se puede dividir por 0";
		}
		catch (NumberFormatException e) {
			mensaje = "No se han introducido numeros.";
		}
		
		//enviar datos a la vista
		request.setAttribute("op1", numero1);
		request.setAttribute("op2", numero2);
		request.setAttribute("resultado", resultado);
		request.setAttribute("mensaje", mensaje);
		request.setAttribute("op", opNum);
		
		//ir a vista
		request.getRequestDispatcher("resultado.jsp").forward(request, response);
		
		
	}

}
