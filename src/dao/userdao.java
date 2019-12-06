package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import dbutil.dbutillogin;
import pojo.POJOsignup;

public class userdao {
public static int adduser(POJOsignup user) throws Exception
{
	int status=0;
	Connection con=dbutillogin.getConnection();
	PreparedStatement ps=con.prepareStatement("INSERT into login values(?,?)");
	ps.setString(1, user.getUsername());
	ps.setString(2, user.getPassword());
	status=ps.executeUpdate();
	return status;
}
}
