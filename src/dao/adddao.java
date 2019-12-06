package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dbutil.dbutiladd;
import dbutil.dbutillogin;
import dbutil.viewdbutil;
import pojo.pojoadd;
import pojo.viewpojo;

public class adddao {
public static List<pojoadd>getallfood() throws Exception {
	List<pojoadd>foodlist=new ArrayList<pojoadd>();
	Connection con=dbutillogin.getConnection();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from addmenu");
	while(rs.next())
	{
		pojoadd food=new pojoadd(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4));
		foodlist.add(food);
	}
	dbutiladd.closeConnection(con);
	return foodlist;
}
public static int addfood(pojoadd food)throws Exception
{
	int status=0;
	Connection con=dbutillogin.getConnection();
	PreparedStatement ps=con.prepareStatement("insert into addmenu values(?,?,?,?)");
	ps.setInt(1,food.getFoodid());
	ps.setString(2,food.getCategory());
	ps.setString(3,food.getName());
	ps.setInt(4,food.getPrice());
	status=ps.executeUpdate();
	return status;
}
}

