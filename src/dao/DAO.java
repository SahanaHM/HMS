package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import dbutil.DBUtil;
import pojo.POJOsignup;

public class DAO {
	public static int addUser(POJOsignup user) throws Exception
	{
		int status=0;
		Connection con=DBUtil.getConnection();
		PreparedStatement ps=con.prepareStatement("INSERT into login values ?,?");
		ps.setString(1, user.getUsername());
		ps.setString(2, user.getPassword());
		status=ps.executeUpdate();
		return status;
	}
}
