package util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


import connect.ConnectDB;
import models.PaymentModel;

public class PaymentUtil {

	private static Connection conn = null;
	private static Statement stmt = null;
	private static ResultSet result = null;	
		
	//-------------insert----------------------------------------
	public static boolean insertPayment(String userID, String amount, String cardNum, String cardExpDate) {
		
		boolean isSuccess = false;
		
		try {
			conn = ConnectDB.getConnection();
			stmt = conn.createStatement();
			
			String sql = "insert into paymentdetails values (0,'"+userID+"','"+amount+"','"+cardNum+"','"+cardExpDate+"',0)";
    		int result = stmt.executeUpdate(sql);
    		
    		if (result > 0) {
    			isSuccess = true;
			}else {
				isSuccess = false;
			}
    		
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}
	
	
	
	
	//-------------Read----------------------------------------
	public static List<PaymentModel> getPaymentDetails(String usID){
		int convertedusID = Integer.parseInt(usID);
		
		ArrayList<PaymentModel> pay = new ArrayList<>();
		
		try {
			conn = ConnectDB.getConnection();
			stmt = conn.createStatement();
			
			String sql = "select * from paymentdetails where User_ID = '"+convertedusID+"'";
			result = stmt.executeQuery(sql);
			
			while(result.next()) {
				String receiptNum = result.getString(1);
				String userID = result.getString(2);
				double amount = result.getDouble(3);
				int cardNum = result.getInt(4);
				Date cardExpDate = result.getDate(5);
					
				SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");  
			    Date date = new Date();  
			    String payDate = formatter.format(date);
			    
				PaymentModel pm = new PaymentModel(receiptNum , userID , amount , cardNum, (java.sql.Date) cardExpDate, payDate );
				pay.add(pm);
			}
			
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return pay;	 
	}
}
	
	
	
	

