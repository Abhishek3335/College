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

@WebServlet("/update")
public class Update_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Update_controller() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		if(session.getAttribute("email")!=null) {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String type = request.getParameter("type");
		String description = request.getParameter("description");
		request.setAttribute("email", email);
		request.setAttribute("name", name);
		request.setAttribute("type", type);
		request.setAttribute("description", description);
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/update_Inq.jsp");
		rd.forward(request, response);
	}else {
		RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
		rd.forward(request, response);
	}
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		if(session.getAttribute("email")!=null) {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String date = request.getParameter("date");
		String type = request.getParameter("type");
		String description = request.getParameter("description");
		DAOS service = new DAOSImp();
		boolean update = service.updateInquiry(name, email, date, type, description);
		//System.out.println(update);
		ResultSet set = service.allInq();
		request.setAttribute("result", set);
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/all_inq.jsp");
		rd.forward(request, response);

	}else {
		RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
		rd.forward(request, response);
}
}
}