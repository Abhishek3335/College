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


@WebServlet("/AllUsers")
public class AllUsers_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public AllUsers_controller() {
        super();
          }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		if(session.getAttribute("email")!=null) {
		DAOS service=new DAOSImp();
		ResultSet set = service.allUsers();
		request.setAttribute("set", set);
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/all_users.jsp");
		rd.forward(request, response);
	}else {
		RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
		rd.forward(request, response);
	}}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
