package orderEventservlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.EventModel;
import util.EventUtil;

/**
 * Servlet implementation class FindEventServlet
 */
@WebServlet("/FindEventServlet")
public class FindEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String userID = request.getParameter("userID");

		boolean isTrue;  
		isTrue = EventUtil.findEvent(userID);
		
		if(isTrue == true ) {
			List<EventModel> eventDetails = EventUtil.getEventui(userID);
			request.setAttribute("eventDetails", eventDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("orderEvent/EventDetails.jsp");
			dis.forward(request, response);
		}else {
			out.println("<script type = 'text/javascript'>");
			out.println("alert('incorrect user ID');");
			out.println("location = 'orderEvent/FindEvent.jsp';");
			out.println("</script>");
		}
		
	}

}
