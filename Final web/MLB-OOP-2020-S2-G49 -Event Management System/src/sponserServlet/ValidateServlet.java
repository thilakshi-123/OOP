package sponserServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Sponsor;
import util.SponsorDBUtil;

/**
 * Servlet implementation class ValidateServlet
 */
@WebServlet("/ValidateServlet")
public class ValidateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String cname = request.getParameter("cname");

		boolean isTrue;  
		isTrue = SponsorDBUtil.validate(cname);
		
		if(isTrue == true ) {
			List<Sponsor> spoDetails = SponsorDBUtil.getSponsorship(cname);
			request.setAttribute("spoDetails", spoDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("sponserAcc/sponsorshipDet.jsp");
			dis.forward(request, response);
		}else {
			
			out.println("<script type = 'text/javascript'>");
			out.println("alert('incorrect');");
			out.println("location = 'sponserAcc/validateSpo.jsp'");
			out.println("</script>");
		}
		
	}

}

