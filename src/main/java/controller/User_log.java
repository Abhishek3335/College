package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.DAOS;
import service.DAOSImp;


@WebServlet("/User_log")
public class User_log extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public User_log() {
        super();
      
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		DAOS service = new DAOSImp();
		service.connectDB();
		boolean userLog = service.userLog(email, password);
		System.out.println(userLog);
		if(userLog) {
			
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/User_Dash.jsp");
			rd.forward(request, response);
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
			rd.forward(request, response);
		}
	}

}
