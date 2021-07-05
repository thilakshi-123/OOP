package util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import connect.ConnectDB;
import models.UserModel;

public class UserUtil {

	private static boolean isSuccess;
	private static Connection conn = null;
	private static Statement stmt = null;
	private static ResultSet result = null;
	
	//--------------------------validate---------------------
	public static boolean validate(String username , String uspass) {
		
		try {
			conn = ConnectDB.getConnection();
			stmt = conn.createStatement();
			String sql = "select * from user where User_Name ='"+username+"' and Password = '"+uspass+"' ";
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
	
	//--------------------------get user---------------------
	public static List<UserModel> getUser(String usname){
		ArrayList<UserModel> user = new ArrayList<>();
		
		try {
			
			conn = ConnectDB.getConnection(); 
			stmt = conn.createStatement();
			String sql = "select * from user where User_Name ='"+usname+"'";
			result = stmt.executeQuery(sql);
			
			
			while(result.next()){
				   int userID = result.getInt(1);
				   String username = result.getString(2); 
				   String name = result.getString(3); 
				   String unic = result.getString(4); 
				   String uemail = result.getString(5); 
				   int uphone = result.getInt(6); 
				   String uaddr = result.getString(7); 
				   String uaccType = result.getString(8); 
				   String upass = result.getString(9);
		  
					  UserModel us = new UserModel(userID , username ,name , unic , uemail , uphone , uaddr, uaccType , upass); 
					  user.add(us); 
					  
			  } 
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return user;
		
	}
	
	
	//-------------------------insert-------------------
	public static boolean insertUser(String username, String name ,String nic , String uemail ,String uphone , String uaddr , String uaccType ,String upass ){
		
		boolean isSuccess = false;
		
		try {
			conn = ConnectDB.getConnection();
			stmt = conn.createStatement();
			
			String sql = "insert into user values (0,'"+username+"' ,'"+name+"','"+nic+"','"+uemail+"','"+uphone+"','"+uaddr+"','"+uaccType+"' , '"+upass+"')";
			
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
	public static boolean updateUser(String userID, String username, String name ,String nic , String uemail ,String uphone , String uaddr , String uaccType ,String upass ) {
		
		try {
			conn = ConnectDB.getConnection();
			stmt = conn.createStatement();
			String sql = "update user set User_Name='"+username+"' , Name='"+name+"' , Email='"+uemail+"' , Phone='"+uphone+"' , Address='"+uaddr+"' , Password = '"+upass+"'" + "where User_ID='"+userID+"'";
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
	
	

	//------------------------get user details----------------------
	public static List<UserModel> getUserDetails(String userid){
		
		int convertedID = Integer.parseInt(userid);
				
		ArrayList<UserModel> usm = new ArrayList<>();
		
		try {
			
			conn = ConnectDB.getConnection(); 
			stmt = conn.createStatement();
			String sql = "select * from user where User_ID ='"+convertedID+"'";
			result = stmt.executeQuery(sql);
			
			
			while(result.next()){
				   int userID = result.getInt(1);
				   String username = result.getString(2); 
				   String name = result.getString(3); 
				   String unic = result.getString(4); 
				   String uemail = result.getString(5); 
				   int uphone = result.getInt(6); 
				   String uaddr = result.getString(7); 
				   String uaccType = result.getString(8); 
				   String upass = result.getString(9);
		  
					  UserModel us = new UserModel(userID , username ,name , unic , uemail , uphone , uaddr, uaccType , upass); 
					  usm.add(us); 
					  
			  } 
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return usm;
		
	}
	
	
			//-------------delete----------------------------------------
	
			public static boolean deleteUser(String userid) {
				
				int convId = Integer.parseInt(userid);
			
				try {
					
					conn = ConnectDB.getConnection();
					stmt = conn.createStatement();
					
					String sql = "delete from user where User_ID='"+convId+"'";
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
