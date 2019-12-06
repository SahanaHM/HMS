<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
* {
  margin: 0;
  padding: 0;
}
div a {
  text-decoration: none;
  color: white;
  font-size: 20px;
  padding: 15px;
  display:inline-block;
}
ul {
  display: inline;
  margin: 0;
  padding: 0;
}
ul li {display: inline-block;}
ul li:hover {background: #555;}
ul li:hover ul {display: block;}
ul li ul {
  position: absolute;
  width: 200px;
  display: none;
}
ul li ul li { 
  background: #555; 
  display: block; 
}
ul li ul li a {display:block !important;} 
ul li ul li:hover {background: #666;}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<div style="background-color: black;">
<%
if(session.getAttribute("username")==null)
{
response.sendRedirect("login.jsp");
}
%>

<ul>
<li><a href="home.jsp">HOME</a></li>
<li><a href="addmenu.jsp">ADDMENU</a></li>
<li><a href="viewmenu.jsp">VIEWMENU</a></li>
<li><a href="search.jsp">SEARCHMENU</a></li>
</ul>
<ul>
<li>
<a href="#">Logout</a>
<ul>
<li><a href="login.jsp">Logout</a>
</ul>
</li>
</ul>
</div>
</body>
</html>