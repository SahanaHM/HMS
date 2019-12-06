package dao;
import pojo.*;
import dbutil.*;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dbutil.dbutillogin;

public class viewdao {
public static List<viewpojo>getAllProducts()throws Exception
{
	List<viewpojo>productlist=new ArrayList<viewpojo>();
	Connection con=dbutillogin.getConnection();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from addmenu");
	while(rs.next())
	{
		viewpojo food=new viewpojo(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4));
		productlist.add(food);
	}
	viewdbutil.closeConnection(con);
	return productlist;
}

}
