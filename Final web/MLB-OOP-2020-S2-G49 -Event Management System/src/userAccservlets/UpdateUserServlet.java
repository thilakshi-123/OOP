package userAccservlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.UserModel;
import util.UserUtil;

/**
 * Servlet implementation class UpdateUserServlet
 */
@WebServlet("/UpdateUserServlet")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userID = request.getParameter("userID");
		String username = request.getParameter("username");
		String name = request.getParameter("name");
		String unic = request.getParameter("unic");
		String uemail = request.getParameter("uemail");
		String uphone = request.getParameter("uphone");
		String uaddr = request.getParameter("uaddr");
		String uaccType = request.getParameter("uaccType");
		String upass = request.getParameter("upass");

		
		boolean isTrue;
		isTrue = UserUtil.updateUser(userID ,username , name , unic, uemail, uphone, uaddr ,uaccType , upass );
		
		if(isTrue == true) {
			  List<UserModel> userDetails = UserUtil.getUserDetails(userID);
			  request.setAttribute("userDetails", userDetails);
			 
			  RequestDispatcher dis = request.getRequestDispatcher("createAcc/UserDetails.jsp");
			  dis.forward(request, response);
		}else {
			
			  List<UserModel> userDetails = UserUtil.getUserDetails(userID);
			  request.setAttribute("userDetails", userDetails);
			 
			
			RequestDispatcher dis = request.getRequestDispatcher("createAcc/UserDetails.jsp");
			dis.forward(request, response);
		}
		
		
	}

}
