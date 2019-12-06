package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dbutil.dbutillogin;
import dbutil.searchdbutil;
import dbutil.viewdbutil;
import pojo.searchpojo;

public class searchdao {
	
	
	public static searchpojo getProductById(String foodid) throws Exception 
	 	{ 
	 		searchpojo product = null; 
	 		 
	 			Connection conn = searchdbutil.getConnection(); 
	 			PreparedStatement ps= conn.prepareStatement("SELECT * FROM addmenu WHERE foodid = ?"); 
	 			ps.setString(1,foodid); 
	 			ResultSet rs = ps.executeQuery(); 
	 			while(rs.next()) 
	 			{ 
	 				product = new searchpojo(rs.getInt("foodid"),rs.getString("category"),rs.getString("name"),rs.getInt("price")); 
	 			} 
	 				 
 		return product; 
	 	} 


}

