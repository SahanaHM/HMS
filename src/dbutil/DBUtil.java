package dbutil;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtil {
public static Connection getConnection() throws Exception
{
Connection conn=null;
Class.forName("oracle.jdbc.driver.OracleDriver");
conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");

return conn;
}
public static void closeConnection(Connection conn) throws Exception
{
	conn.close();
}
}
