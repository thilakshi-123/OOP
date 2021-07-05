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
 * Servlet implementation class UpdatefdServlet
 */
@WebServlet("/UpdatefdServlet")
public class UpdatefdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String fdID = request.getParameter("fdID");
		String fdbk = request.getParameter("fdbk");
		String name = request.getParameter("name");
		
		boolean isTrue;
		isTrue = FeedbackUtil.updateFeedback(fdID , name , fdbk);
		
		if(isTrue == true) {
			List<Feedback> feedbackDetails = FeedbackUtil.getDetailsU(fdID);
			request.setAttribute("feedbackDetails", feedbackDetails);
			 
			  RequestDispatcher dis = request.getRequestDispatcher("feedback/ViewFeedback.jsp");
			  dis.forward(request, response);
		}else {
			List<Feedback> feedbackDetails = FeedbackUtil.getDetailsU(fdID);
			request.setAttribute("feedbackDetails", feedbackDetails);
			 
			  RequestDispatcher dis = request.getRequestDispatcher("feedback/ViewFeedback.jsp");
			  dis.forward(request, response);
		}

		
	}

}
