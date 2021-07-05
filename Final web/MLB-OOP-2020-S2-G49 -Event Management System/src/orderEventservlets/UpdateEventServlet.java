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
 * Servlet implementation class UpdateEventServlet
 */
@WebServlet("/UpdateEventServlet")
public class UpdateEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String eventID = request.getParameter("eventID");
		String userID = request.getParameter("userID");
		String eCat = request.getParameter("eCat");
		Double eCap = Double.parseDouble(request.getParameter("eCap"));
		String eDate = request.getParameter("eDate");
		String eTime = request.getParameter("eTime");
		String eCity = request.getParameter("eCity");
		String spMsg = request.getParameter("spMsg");
		Double ebudget = Double.parseDouble(request.getParameter("ebudget"));
		
		
		  if( eCap <= 100 ) { ebudget = eCap * 600.00; }else
		  if( eCap > 100 && eCap <= 300 ) { ebudget = eCap * 550.00; }else
		  if( eCap > 300 && eCap <= 500 ) { ebudget = eCap * 500.00; }
		  else { ebudget = eCap * 480.00; }
		  
		
		boolean isTrue;
		isTrue = EventUtil.updateEvent(eventID , userID, eCat ,eCap ,eDate ,eTime ,eCity , spMsg , ebudget);
		
		if(isTrue == true) {
			  List<EventModel> eventDetails = EventUtil.getEventei(eventID);
			  request.setAttribute("eventDetails", eventDetails);
			 
			  RequestDispatcher dis = request.getRequestDispatcher("orderEvent/EventDetails.jsp");
			  dis.forward(request, response);
		}else {
			List<EventModel> eventDetails = EventUtil.getEventei(eventID);
			  request.setAttribute("eventDetails", eventDetails);
			 
			  RequestDispatcher dis = request.getRequestDispatcher("orderEvent/EventDetaills.jsp");
			  dis.forward(request, response);
		}
		
		
	}

}
