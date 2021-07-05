package feedbackServlet;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class InsertfdServlet
 */
@WebServlet("/InsertfdServlet")
public class InsertfdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String fdbk = request.getParameter("fdbk");
		String name = request.getParameter("name");
		
		boolean result;
		
		result = FeedbackUtil.insertFeedback(name, fdbk);
		
		if(result == true) {
			List<Feedback> feedbackDetails = FeedbackUtil.getFeedback(name);
			request.setAttribute("feedbackDetails", feedbackDetails);
			
				RequestDispatcher dis = request.getRequestDispatcher("feedback/ViewFeedback.jsp");
			dis.forward(request, response);
				
		} else {
			out.println("<script type = 'text/javascript'>");
			out.println("alert('error:can't create feedback');");
			out.println("location = 'feedback/AddFeedback.jsp");
			out.println("</script>");
			
		}

    	
    	
    	
	}

}
