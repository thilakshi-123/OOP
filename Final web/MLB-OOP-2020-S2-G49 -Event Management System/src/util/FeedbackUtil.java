package util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import connect.ConnectDB;
import models.Feedback;

public class FeedbackUtil {

	private static boolean isSuccess;
	private static Connection conn = null;
	private static Statement stmt = null;
	private static ResultSet result = null;
	
	
	//--------------------------get fd--------------------
	public static List<Feedback> getFeedback(String usname){
		ArrayList<Feedback> fbk = new ArrayList<>();
		
		try {
			
			conn = ConnectDB.getConnection(); 
			stmt = conn.createStatement();
			String sql = "select * from feedback where Name='"+usname+"'";
			result = stmt.executeQuery(sql);
			
			
			while(result.next()){
					int fdID = result.getInt(1);
				   String name = result.getString(2); 
				   String fdbk = result.getString(3); 
				   
		  
				   Feedback fd= new Feedback(fdID, name ,fdbk); 
					  fbk.add(fd); 
					  
			  } 
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return fbk;
		
	}
	
	
	//-------------------------insert-------------------
	public static boolean insertFeedback(String name, String fdbk){
		
		boolean isSuccess = false;
		
		try {
			conn = ConnectDB.getConnection();
			stmt = conn.createStatement();
			
			String sql = "insert into feedback values (0,'"+name+"' ,'"+fdbk+"')";
			
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
	
	
	
	//-------------update---------------------------------------
	public static boolean updateFeedback(String fdID, String name ,String fdbk ) {
		
		try {
			conn = ConnectDB.getConnection();
			stmt = conn.createStatement();
			String sql = "update feedback set Name='"+name+"' , feedback='"+fdbk+"'" + "where feedback_Num ='"+fdID+"'";
			int result = stmt.executeUpdate(sql);
			
			if(result > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	

	
			//-------------delete----------------------------------------
	
			public static boolean deleteFeedback(String uname) {
			
				try {
					
					conn = ConnectDB.getConnection();
					stmt = conn.createStatement();
					
					String sql = "delete from feedback where Name='"+uname+"'";
					int result = stmt.executeUpdate(sql);
					
					if(result > 0) {
						isSuccess = true;
					}
					else {
						isSuccess = false;
					}
					
				}catch (Exception e) {
					e.printStackTrace();
				}
			
				return isSuccess;
			}
	
	
	
		///////////////////getS details////////////////////////
					
			 public static List<Feedback> getDetailsU(String uid)
			  
			  { int convertedID= Integer.parseInt(uid);
			  
			  ArrayList<Feedback> fdk =new ArrayList<>();
			  
			  try { conn=ConnectDB.getConnection(); stmt=conn.createStatement();
			  
			  String sql="select* from feedback where feedback_Num ='"+convertedID+"'";
			  result=stmt.executeQuery(sql);
			  
			  while(result.next()) { 
				  int fdID = result.getInt(1);
				  String name = result.getString(2);
			      String fdbk = result.getString(3);
			     
			  
			      Feedback fd = new Feedback(fdID , name , fdbk);
			  fdk.add(fd); }
			  
			  } catch(Exception e){ e.printStackTrace();
			  
			  }
			  
			  return fdk;
			  
			  }
}