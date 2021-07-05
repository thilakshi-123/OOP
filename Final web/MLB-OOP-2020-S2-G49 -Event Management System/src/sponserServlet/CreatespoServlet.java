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
 * Servlet implementation class CreatespoServlet
 */
@WebServlet("/CreatespoServlet")
public class CreatespoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String cname =request.getParameter("cname");
		String caddress=request.getParameter("caddress");
		String cemail=request.getParameter("cemail");
		String camount=request.getParameter("camount");
		String tmfrom=request.getParameter("tmfrom");
		String tmto=request.getParameter("tmto");
		
		boolean result;
		
		result = SponsorDBUtil.insertsponsorship(cname, caddress, cemail, camount, tmfrom, tmto);
		
		if(result ==true) {
			List<Sponsor> spoDetails = SponsorDBUtil.getSponsorship(cname);
			request.setAttribute("spoDetails", spoDetails);
				
			RequestDispatcher dis= request.getRequestDispatcher("sponserAcc/sponsorshipDet.jsp");
			dis.forward(request,response);
		}else {
			out.println("<script type = 'text/javascript'>");
			out.println("alert('error:can't create');");
			out.println("location = 'sponserAcc/AddSpo.jsp'");
			out.println("</script>");
		}
		
	}

}
