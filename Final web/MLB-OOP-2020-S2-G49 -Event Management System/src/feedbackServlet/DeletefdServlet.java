package feedbackServlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Feedback;
import util.FeedbackUtil;

/**
 * Servlet implementation class DeletefdServlet
 */
@WebServlet("/DeletefdServlet")
public class DeletefdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		boolean isTrue;
		
		isTrue = FeedbackUtil.deleteFeedback(name);
		
		if (isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("Home.jsp");
			dis.forward(request, response);
			
		}
		else {
			List<Feedback> feedbackDetails = FeedbackUtil.getFeedback(name);
			request.setAttribute("feedbackDetails", feedbackDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("feedback/ViewFeedback.jsp");
			dispatcher.forward(request, response);
		}
		
		
	}

}
