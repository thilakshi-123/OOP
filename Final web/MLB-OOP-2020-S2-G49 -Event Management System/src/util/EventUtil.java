package util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import connect.ConnectDB;
import models.EventModel;

public class EventUtil {
	
	private static boolean isSuccess;
	private static Connection conn = null;
	private static Statement stmt = null;
	private static ResultSet result = null;
	

	
	//----------------validate user ID------------------------
public static boolean findEvent(String userID) {
	//int cuserID = Integer.parseInt(userID);
	
		try {
			conn = ConnectDB.getConnection();
			stmt = conn.createStatement();
			String sql = "select * from event where UserID ='"+userID+"'";
			result = stmt.executeQuery(sql);
			
			if(result.next() ) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	
	//------------------get events with event ID----------------------
	public static List<EventModel> getEventei(String eventid){
		int cneventid = Integer.parseInt(eventid);
		
		ArrayList<EventModel> event = new ArrayList<>();
		
		try {
			
			conn = ConnectDB.getConnection(); 
			stmt = conn.createStatement();
			String sql = "select * from event where Event_ID ='"+cneventid+"'";
			result = stmt.executeQuery(sql);
			
			
			while(result.next()){
				   int eventID = result.getInt(1);
				   int userID = result.getInt(2);
				   String eCat = result.getString(3); 
				   int eCap = result.getInt(4); 
				   String eDate = result.getString(5); 
				   String eTime = result.getString(6); 
				   String eCity = result.getString(7); 
				   String spMsg = result.getString(8); 
				   Double ebudget = result.getDouble(9);
		  
				   
					  EventModel ev = new EventModel(eventID ,userID , eCat ,eCap , eDate , eTime , eCity , spMsg, ebudget); 
					  event.add(ev); 
					  
			  } 
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return event;
		
	}
	
	
	//------------------get events with user ID----------------------
			public static List<EventModel> getEventui(String userid){
				int cnuserid = Integer.parseInt(userid);				
				ArrayList<EventModel> event = new ArrayList<>();
				
				try {
					
					conn = ConnectDB.getConnection(); 
					stmt = conn.createStatement();
					String sql = "select * from event where UserID ='"+cnuserid+"'";
					result = stmt.executeQuery(sql);
					
					
					while(result.next()){
						   int eventID = result.getInt(1);
						   int userID = result.getInt(2);
						   String eCat = result.getString(3); 
						   int eCap = result.getInt(4); 
						   String eDate = result.getString(5); 
						   String eTime = result.getString(6); 
						   String eCity = result.getString(7); 
						   String spMsg = result.getString(8); 
						   Double ebudget = result.getDouble(9);
				  
						   
							  EventModel ev = new EventModel(eventID ,userID , eCat ,eCap , eDate , eTime , eCity , spMsg, ebudget); 
							  event.add(ev); 
							  
					  } 
					
				}catch (Exception e) {
					e.printStackTrace();
				}
				
				return event;
				
			}
		
			
			
	
	//--------------insert------------------------
	public static boolean insertEvent(String userID, String eCat, Double eCap, String eDate,String eTime, String eCity, String spMsg, double budget ){
				
		boolean isSuccess = false;
		
		try {
			conn = ConnectDB.getConnection();
			stmt = conn.createStatement();
			
			String sql = "insert into event values (0, '"+userID+"' , '"+eCat+"' ,'"+eCap+"','"+eDate+"','"+eTime+"','"+eCity+"','"+spMsg+"','"+budget+"')";
			
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
		public static boolean updateEvent(String eventID ,String userID, String eCat, Double eCap, String eDate,String eTime, String eCity, String spMsg, Double ebudget ) {
			
			try {
				conn = ConnectDB.getConnection();
				stmt = conn.createStatement();
				
				String sql = "update event set Event_Category='"+eCat+"' , Seat_capacity='"+eCap+"' , Date='"+eDate+"' , Time='"+eTime+"' , City='"+eCity+"' , Special_Message = '"+spMsg+"', Estimated_Budget='"+ebudget+"'" + "where Event_ID='"+eventID+"'";
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
		
		public static boolean deleteEvent(String eventid) {
			int ceventid = Integer.parseInt(eventid);		
			try {
				
				conn = ConnectDB.getConnection();
				stmt = conn.createStatement();
				
				String sql = "delete from event where Event_ID='"+ceventid+"'";
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
	
	
	

}
