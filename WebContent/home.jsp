<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="dao.*" %>
    <%@ page import="pojo.*" %>
    <%@ page import="dbutil.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body
{
background-image:url("hotel.jpg");
}
</style>
</head>
<body>
<%@include file="header.jsp" %>
<%String username=(String)session.getAttribute("username"); %>
<div align="center">
<h2>HOTEL MANAGEMENT SYSTEM</h2>
<label><b>welcome        <%=username %></b></label>
</div>

</body>
</html>