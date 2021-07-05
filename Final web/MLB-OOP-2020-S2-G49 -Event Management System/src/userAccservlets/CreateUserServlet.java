package userAccservlets;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class CreateUserServlet
 */
@WebServlet("/CreateUserServlet")
public class CreateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String username = request.getParameter("username");
		String name = request.getParameter("name");
		String unic = request.getParameter("unic");
		String uemail = request.getParameter("uemail");
		String uphone = request.getParameter("uphone");
		String uaddr = request.getParameter("uaddr");
		String uaccType = request.getParameter("uaccType");
		String upass = request.getParameter("upass");
		
		boolean result;
		
		result = UserUtil.insertUser(username, name, unic, uemail, uphone , uaddr , uaccType , upass);
		
		if(result == true) {
			List<UserModel> userDetails = UserUtil.getUser(username);
			request.setAttribute("userDetails", userDetails);
			
				RequestDispatcher dis = request.getRequestDispatcher("createAcc/UserDetails.jsp");
			dis.forward(request, response);
				
		} else {
			out.println("<script type = 'text/javascript'>");
			out.println("alert('error:can't create account');");
			out.println("location = 'CreateAccount.jsp'");
			out.println("</script>");
			
		}
		
		
	}

}
