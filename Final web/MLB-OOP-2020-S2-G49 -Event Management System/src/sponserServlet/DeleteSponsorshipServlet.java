package sponserServlet;

import java.io.IOException;
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
 * Servlet implementation class DeleteSponsorshipServlet
 */
@WebServlet("/DeleteSponsorshipServlet")
public class DeleteSponsorshipServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sid = request.getParameter("sid");
		boolean isTrue;
		
		isTrue = SponsorDBUtil.deletesponsorship(sid);
		
		if (isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("Home.jsp");
			dis.forward(request, response);
		}
		else {
			List<Sponsor> spoDetails = SponsorDBUtil.getSponsorshipDetails(sid);
			request.setAttribute("spoDetails", spoDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("sponserAcc/sponsorshipDet.jsp");
			dispatcher.forward(request, response);
		}
	}

}
