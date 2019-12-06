<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
div{
align:center;
}
body
{
background-image:url("HOTEL2.jpg");
}
table {
  border-collapse: collapse;
  width: 50%;
}
thead{
text-align:center;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {

  background-color: #4CAF50;
  color: white;
  </style>
</head>
<body>
<div align="center">
<form action="processaddmenu.jsp" method="post">
<table border="1">
<thead>
<tr>
<th colspan="2"> Food Details</th>
</tr>
</thead>
<tr>
<td><b>FoodId</b></td>
<td><input type="text" name="foodid" size="20"></td>
</tr>
<tr>
<td><b>Category</b></td>
<td><input type="text" name="category" size="20"></td>
</tr>
<tr>
<td><b>Name</b></td>
<td><input type="text" name="name" size="20"></td>
</tr>
<tr>
<td><b>Price</b></td>
<td><input type="text" name="price" size="20"></td>
</tr>

</table>
<button class="actionbutton" style="margin-top:10px">add</button>
</form>
</div>
</body>
</html>