package edu.mum.cs.cs427.lab11;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ProcessContactFormDataServlet
 */
@WebServlet("/process")
public class ProcessContactFormDataServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProcessContactFormDataServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("Process Contact Form In doGET");
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String[] fields = { "name", "gender", "category", "message" };
		boolean hasError = false;
		String errorMessage = "";
		String urlParameters = "";
		
		for (String field : fields) {
			if (request.getParameter(field) == null || request.getParameter(field).trim().isEmpty()) {
				errorMessage += "<div style=\"color:red;font-style:italic\">"+field+" should not be empty</div>";
				hasError = true;
			}
		}
		if (hasError) {
			request.setAttribute("errorMsg", errorMessage);
			RequestDispatcher rd = request.getRequestDispatcher("contactus.jsp");
			rd.forward(request, response);
		} else {
			for (String field : fields) {				
				if (request.getParameter(field) != null && !request.getParameter(field).equals("")) {							
					urlParameters += field + "=" + request.getParameter(field) + "&";					
				}
			}
			response.sendRedirect("thankyou.jsp?" + urlParameters);
		}
	}

}
