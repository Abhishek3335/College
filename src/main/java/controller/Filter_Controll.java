package controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.DAOS;
import service.DAOSImp;

@WebServlet("/filter")
public class Filter_Controll extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Filter_Controll() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		if (session.getAttribute("email") != null) {
			String date = request.getParameter("date");
			String type = request.getParameter("type");
			DAOS service = new DAOSImp();
			ResultSet filter = service.filterInq(date, type);
			request.setAttribute("result", filter);
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/all_inq.jsp");
			rd.forward(request, response);
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
			rd.forward(request, response);
		}
	}
}
