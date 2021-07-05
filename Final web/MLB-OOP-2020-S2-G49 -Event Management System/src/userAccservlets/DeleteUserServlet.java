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
 * Servlet implementation class DeleteUserServlet
 */
@WebServlet("/DeleteUserServlet")
public class DeleteUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userID = request.getParameter("userID");
		boolean isTrue;
		
		isTrue = UserUtil.deleteUser(userID);
		
		if (isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("Home.jsp");
			dis.forward(request, response);
			
		}
		else {
			List<UserModel> userDetails = UserUtil.getUserDetails(userID);
			request.setAttribute("userDetails", userDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("createAcc/UserDetails.jsp");
			dispatcher.forward(request, response);
		}
		
		
	}

}
