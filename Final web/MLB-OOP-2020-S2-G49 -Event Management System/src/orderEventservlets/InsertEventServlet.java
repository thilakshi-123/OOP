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
 * Servlet implementation class InsertEvent
 */
@WebServlet("/InsertEventServlet")
public class InsertEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String userID = request.getParameter("userID");
		String eCat = request.getParameter("eCat");
		Double eCap = Double.parseDouble(request.getParameter("eCap"));
		String eDate = request.getParameter("eDate");
		String eTime = request.getParameter("eTime");
		String eCity = request.getParameter("eCity");
		String spMsg = request.getParameter("spMsg");
		
		//int cneCap = Integer.parseInt("eCap");
		
		double ebudget = 0;
		
		  if( eCap <= 100 ) { ebudget = eCap * 600.00; }else
		  if( eCap > 100 && eCap <= 300 ) { ebudget = eCap * 550.00; }else
		  if( eCap > 300 && eCap <= 500 ) { ebudget = eCap * 500.00; }
		  else { ebudget = eCap * 480.00; }
		 

		boolean result;
		
		result = EventUtil.insertEvent(userID, eCat, eCap, eDate, eTime, eCity , spMsg , ebudget);
		
		if(result == true) {
			
			List<EventModel> eventDetails = EventUtil.getEventui(userID);
			request.setAttribute("eventDetails", eventDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("orderEvent/EventDetails.jsp");
			dis.forward(request, response);
		} else {
			out.println("<script type = 'text/javascript'>");
			out.println("alert('error:can't create account');");
			out.println("location = 'orderEvent/CreateOrder.jsp'");
			out.println("</script>");
			
		}
		
		
	}


		
	}

