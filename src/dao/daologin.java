package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dbutil.dbutillogin;
import pojo.pojologin;



public class daologin {
	public static boolean isUserValid(pojologin userdetails)
	{
	boolean validStatus = false;
	
	try
	{
		
		Connection con=dbutillogin.getConnection();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("SELECT * from login where USERNAME='"+userdetails.getUsername()+"' AND PASSWORD='"+userdetails.getPassword()+"'");
		while(rs.next())
		{
			validStatus = true;
			
		}
		dbutillogin.closeConnection(con);
	}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	return validStatus;
	}
}
	

