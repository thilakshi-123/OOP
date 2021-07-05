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
 * Servlet implementation class UpdateSponsorshipServlet
 */
@WebServlet("/UpdateSponsorshipServlet")
public class UpdateSponsorshipServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sid = request.getParameter("sid");
		String cname= request.getParameter("cname");
		String caddress= request.getParameter("caddress");
		String cemail= request.getParameter("cemail");
		String camount= request.getParameter("camount");
		String tmfrom= request.getParameter("tmfrom");
		String tmto= request.getParameter("tmto");
		
		boolean isTrue;
		isTrue = SponsorDBUtil.updatesponsorship(sid, cname, caddress, cemail, camount, tmfrom, tmto);
		
		if(isTrue== true) {
			
			List<Sponsor> spoDetails =SponsorDBUtil.getSponsorshipDetails(sid);
			request.setAttribute("spoDetails", spoDetails);
			
			RequestDispatcher dis= request.getRequestDispatcher("sponserAcc/sponsorshipDet.jsp");
			dis.forward(request, response);
			
		}
		else {
			
			List<Sponsor>spoDetails =SponsorDBUtil.getSponsorshipDetails(sid);
			request.setAttribute("spoDetails", spoDetails);
			
			RequestDispatcher dis= request.getRequestDispatcher("sponserAcc/sponsorshipDet.jsp");
			dis.forward(request, response);
		}
		
	}

}

