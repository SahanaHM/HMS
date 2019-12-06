<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="dao.*" %>
    <%@ page import="pojo.*" %>
    <%@ page import="dbutil.*" %>
    <%@ page import="java.util.List" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
body{
background-image:url("backg3.jpg");
background-repeat:no-repeat;
background-size:1000px 800px;
background-position:right;
}
table {
  border-collapse: collapse;
  width: 70%;
  margin-top:200px;
  margin-left:-250px;
  border:1px solid black;
}

th, td {
  text-align: left;
  padding: 8px;
  border:1px solid black;
  border-radius:4px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
  background-color: #4CAF50;
  color: white;
}
</style>
</head>
<body>
<table align="center" class="productTable" >
<thead>
<tr>
<th>Foodid</th>
<th>Category</th>
<th>Name</th>
<th>Price</th>
<th colspan="2" text-align="center"; >          Actions</th>
</tr>
</thead>
<%
List<viewpojo> productlist=viewdao.getAllProducts();
for(viewpojo f:productlist)
{
	
%>
<tr>
<td><%=f.getFoodid() %></td>
<td><%=f.getCategory() %></td>
<td><%=f.getName() %></td>
<td><%=f.getPrice() %></td>
<td><button class="actionBtn" onclick="location.href = 'edit.jsp?foodid=<%= f.getFoodid()%>';">Edit</button></td> 
<td><button class="actionBtn" onclick="location.href = 'delete.jsp?foodid=<%= f.getFoodid()%>';">Delete</button></td> 


</tr>
<%
}
%>
</table>
</body>
</html>