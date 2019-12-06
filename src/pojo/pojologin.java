package pojo;

public class pojologin {
String username;
String password;
public pojologin() {
	super();
	// TODO Auto-generated constructor stub
}
public pojologin(String username, String password) {
	super();
	this.username = username;
	this.password = password;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
@Override
public String toString() {
	return "pojologin [username=" + username + ", password=" + password + "]";
}

}
