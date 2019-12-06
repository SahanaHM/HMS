package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dbutil.deletedbutil;
import dbutil.editdbutil;
import pojo.deletepojo;
import pojo.editpojo;

public class deletedao {
	public static int deletefood(String foodid) throws Exception 
	
	 	{ 
 		int status = 0; 
			Connection con = deletedbutil.getConnection(); 
 			PreparedStatement ps= con.prepareStatement("DELETE FROM addmenu where foodid = ?"); 
 			ps.setString(1, foodid); 
 			status = ps.executeUpdate(); 
 		return status; 
 	} 
	
		 
 } 


