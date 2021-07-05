package util;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import connect.ConnectDB;


import models.Sponsor;

public class SponsorDBUtil {
	
	private static boolean isSuccess;
	private static Connection con= null;
	private static Statement stmt=null;
	private static ResultSet rs=null;

	
	//--------------------------validate---------------------
		public static boolean validate(String cname) {
			
			try {
				con = ConnectDB.getConnection();
				stmt = con.createStatement();
				String sql = "select * from sponsor where CompanyName='"+cname+"'";
				rs = stmt.executeQuery(sql);
				
				if(rs.next() ) {
					isSuccess = true;
				}else {
					isSuccess = false;
				}
				
				
			}catch (Exception e) {
				e.printStackTrace();
			}
			
			return isSuccess;
		}
	
		//--------------------------get sponsor---------------------
		public static List<Sponsor> getSponsorship(String cmname){
			ArrayList<Sponsor> sspo = new ArrayList<>();
			
			try {
				
				con = ConnectDB.getConnection(); 
				stmt = con.createStatement();
				String sql = "select * from sponsor where CompanyName ='"+cmname+"'";
				rs = stmt.executeQuery(sql);
				
				
				while(rs.next()){
					  int sid = rs.getInt(1);
					  String cname = rs.getString(2);
				      String caddress = rs.getString(3);
				      String cemail = rs.getString(4);
				      int camount = rs.getInt(5);
				      String tmfrom = rs.getString(6); 
				      String tmto = rs.getString(7);
			  
				      Sponsor spo = new Sponsor(sid,cname,caddress,cemail,camount,tmfrom,tmto);
					  sspo.add(spo);
						  
				  } 
				
			}catch (Exception e) {
				e.printStackTrace();
			}
			
			return sspo;
			
		}
	
	
	///////////////////insert////////////////////////
	public static boolean insertsponsorship(String cname,String caddress,String cemail,String camount,String tmfrom,String tmto) {
		
	isSuccess = false;
	
	try {
		
		Class.forName("com.mysql.jdbc.Driver");		
		Connection con = ConnectDB.getConnection();
		stmt =  con.createStatement();
		String sql="insert into sponsor values(0,'"+cname+"','"+caddress+"','"+cemail+"','"+camount+"','"+tmfrom+"','"+tmto+"')";
		
		int rs= stmt.executeUpdate(sql);
		if(rs>0) {
			isSuccess=true;
		}else {
			isSuccess=false;
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	return isSuccess;
	}

	
	
	
	///////////update/////////////////////

  public static boolean updatesponsorship(String sid,String cname, String caddress,String cemail,String camount, String tmfrom, String tmto) {
  
  try {
  
  con=ConnectDB.getConnection();
  stmt=(Statement) con.createStatement();
  
  
  String sql ="update sponsor set CompanyName='"+cname+"', CompanyAddress='"+caddress+"',email='"+cemail+"',SponsorAmount='"+camount+"',TimeFROM='"+tmfrom+"',TimeTO='"+tmto+"'" + "where idsponsor='"+sid+"'"; 
  int rs=((java.sql.Statement) stmt).executeUpdate(sql);
  
  if(rs>0) { isSuccess=true; } else { isSuccess=false; }
  
  
  
  }catch(Exception e) { e.printStackTrace(); }
  
  return isSuccess;
  
  }
  
  
///////////////////getSponsorship details////////////////////////
	
	  public static List<Sponsor> getSponsorshipDetails(String id)
	  
	  { int convertedID= Integer.parseInt(id);
	  
	  ArrayList<Sponsor> sspo =new ArrayList<>();
	  
	  try { con=ConnectDB.getConnection(); stmt=con.createStatement();
	  
	  String sql="select* from sponsor where idsponsor='"+convertedID+"'";
	  rs=stmt.executeQuery(sql);
	  
	  while(rs.next()) { 
		  int sid = rs.getInt(1);
		  String cname = rs.getString(2);
	      String caddress = rs.getString(3);
	      String cemail = rs.getString(4);
	      int camount = rs.getInt(5);
	      String tmfrom = rs.getString(6); 
	      String tmto = rs.getString(7);
	  
	  Sponsor spo = new Sponsor(sid,cname,caddress,cemail,camount,tmfrom,tmto);
	  sspo.add(spo); }
	  
	  } catch(Exception e){ e.printStackTrace();
	  
	  }
	  
	  return sspo;
	  
	  }
	  
	
	  
	  
	  
	  
	  
	  
	  
	  
	  

//////delete///////////////////////

public static boolean deletesponsorship(String sid) {
	
	int convId = Integer.parseInt(sid);

	try {
		
		con = ConnectDB.getConnection();
		stmt = con.createStatement();
		
		String sql = "delete from sponsor where idsponsor='"+convId+"'";
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


