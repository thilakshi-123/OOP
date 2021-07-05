package orderEventservlets;

import java.io.IOException;
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
 * Servlet implementation class DeleteEventServlet
 */
@WebServlet("/DeleteEventServlet")
public class DeleteEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String eventID = request.getParameter("eventID");
		boolean isTrue;
		
		isTrue = EventUtil.deleteEvent(eventID);
		
		if (isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("createAcc/UserDetails.jsp");
			dis.forward(request, response);
			
		}
		else {
			List<EventModel> eventDetails = EventUtil.getEventei(eventID);
			request.setAttribute("eventDetails", eventDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("orderEvent/EventDetails.jsp");
			dispatcher.forward(request, response);
		}
		
		
	}

}
