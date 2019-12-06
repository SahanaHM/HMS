package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dbutil.editdbutil;
import pojo.editpojo;

public class editdao {
	
	public static editpojo getProductById(String productId) throws Exception 
	 	{ 
	 		editpojo product = null; 
	 		 
				Connection conn = editdbutil.getConnection(); 
	 			PreparedStatement ps= conn.prepareStatement("SELECT * FROM addmenu WHERE foodid= ?"); 
	 			ps.setString(1, productId); 
	 			ResultSet rs = ps.executeQuery(); 
	 			while(rs.next()) 
	 			{ 
	 				product = new editpojo(rs.getInt("foodid"),rs.getString("category"),rs.getString("name"),rs.getInt("price")); 
	 			} 
					 
	 		return product; 

	} 

 	
	public static int editfood(editpojo menu) throws Exception 
	{ 
 		int status = 0; 
 		 
	 			Connection conn = editdbutil.getConnection(); 
 			PreparedStatement ps= conn.prepareStatement("UPDATE addmenu SET name=?, category=?, price=? WHERE foodid=?"); 
 			ps.setInt(4, menu.getFoodid()); 
 			ps.setString(2, menu.getCategory()); 
	 		ps.setString(1, menu.getName()); 
 			ps.setInt(3, menu.getPrice()); 
 			status = ps.executeUpdate(); 
	 		 
 		 
 		return status; 
	 	} 
	

		 

}
