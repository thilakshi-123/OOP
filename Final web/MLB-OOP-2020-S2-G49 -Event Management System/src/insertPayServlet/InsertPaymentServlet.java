package insertPayServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.PaymentModel;
import util.PaymentUtil;

/**
 * Servlet implementation class InsertPaymentServlet
 */
@WebServlet("/InsertPaymentServlet")
public class InsertPaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String userID = request.getParameter("userID");
		String amount = request.getParameter("amount");
		String cardNum = request.getParameter("cardNum");
		String cardExpDate = request.getParameter("cardExpDate");
		
		boolean result;
		
		result = PaymentUtil.insertPayment(userID, amount, cardNum, cardExpDate);
		
		if(result == true) {
			List<PaymentModel> paymentDetails = PaymentUtil.getPaymentDetails(userID);
			request.setAttribute("paymentDetails", paymentDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("makePay/paymentDetails.jsp");
			dis.forward(request, response);
		} else {
			out.println("<script type = 'text/javascript'>");
			out.println("alert('error:can't make payment');");
			out.println("location = 'makePay/insertPayment.jsp'");
			out.println("</script>");
		}
		
	}

}
