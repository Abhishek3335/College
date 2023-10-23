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

@WebServlet("/UserReg")
public class User_Reg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public User_Reg() {
        super();
      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/User_Reg.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	String password=request.getParameter("password");
	DAOS service = new DAOSImp();
	service.connectDB();
	boolean userReg = service.UserReg(name, email, password);
	if (userReg) {
		request.setAttribute("reg", "Registration is Successfull");
		RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
		rd.forward(request, response);
	} else {
		System.out.println("Else");
		request.setAttribute("Nreg", "Registration is Not Successfull");
		RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
		rd.forward(request, response);
	}
	}

}
