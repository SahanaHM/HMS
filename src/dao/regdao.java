package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import dbutil.dbutiladd;
import pojo.regpojo;

public class regdao {
public static int adduser(regpojo data ) throws Exception
{
	int status=0;
	Connection con=dbutiladd.getConnection();
	PreparedStatement ps=con.prepareStatement("insert into login values(?,?)");
	ps.setString(1,data.getUsername());
	ps.setString(2,data.getPassword());
	status=ps.executeUpdate();
	return status;
}
}
