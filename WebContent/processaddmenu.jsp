<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="pojo.*" %>
     <%@ page import="dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
int foodid=Integer.parseInt(request.getParameter("foodid"));
String category=request.getParameter("category");
String name=request.getParameter("name");
int price=Integer.parseInt(request.getParameter("price"));
pojoadd food=new pojoadd(foodid,category,name,price);
int status=adddao.addfood(food);
if(status==1)
{
response.sendRedirect("viewmenu.jsp");
}
else
{
response.sendRedirect("error.jsp"); 
}
%>
</body>
</html>