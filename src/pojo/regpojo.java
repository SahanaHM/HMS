package pojo;

public class regpojo {
String userName;
String password;
public regpojo() {
	super();
	// TODO Auto-generated constructor stub
}
public regpojo(String username, String password) {
	super();
	this.userName = username;
	this.password = password;
}
public String getUsername() {
	return userName;
}
public void setUsername(String username) {
	this.userName = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
@Override
public String toString() {
	return "regpojo [userName=" + userName + ", password=" + password + "]";
}

}
