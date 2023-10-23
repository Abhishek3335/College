package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.DAOS;
import service.DAOSImp;

@WebServlet("/inquiry")
public class Inquiry_Controll extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Inquiry_Controll() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		if(session.getAttribute("email")!=null) {
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String date=request.getParameter("date");
		String type=request.getParameter("type");
		String description=request.getParameter("description");
		DAOS service = new DAOSImp();
		service.connectDB();
		boolean sub = service.inqSub(name, email, date, type, description);
		
		if(sub) {
			request.setAttribute("Success", "Inquiry Submitted Successfully !");
			RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
			rd.forward(request, response);
			
		}
	}else {
		RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
		rd.forward(request, response);
	}
}}
