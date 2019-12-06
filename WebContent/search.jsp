<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="dao.*" %>
    <%@ page import="pojo.*" %>
     
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-image:url("search.jpg");
background-repeat:no-repeat;
background-size:1500px 1000px;
}
div {
background-color:darkcyan;
margin-top:50px;
margin-left:450px;
margin-right:6px;
margin-bottom:20px;
width:20%;
padding-bottom:20px;
padding-left:20px;
padding-right:20px;
padding-top:20px;
height:100px;
border-radius:4px;
}
table {
  border-collapse: collapse;
  width: 50%;
  margin-left:-50px;
}

th, td {
  text-align: center;
  padding: 15px;
  margin-left:120px;
  border:1px solid #ddd;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
  background-color: #4CAF50;
  color: white;
  padding-top:12px;
  padding-bottom:12px;
}
button {
margin-left:60px;
}
</style>
</head>
<body>
<div>
<form action="search.jsp"> 
 		<label>Enter FoodId: </label> <br><br>
 		<input type="text" name="foodid" size="25" class="searchTextField"/> 
 		<br>
 		<br>
 		<button class="actionBtn">Search</button>  	</form> 
 		</div>
<table align="center" class="productTable"> 
 		<thead> 
			<tr> 
	<th>foodID</th> 
      <th>Category</th> 
        <th>name</th> 
          <th>Price</th> 
          <th colspan="2">Actions</th> 
			</tr>  
		</thead> 
		<% 
		String foodid = request.getParameter("foodid"); 
		if(foodid != null) 			
		{ 
				searchpojo p =searchdao.getProductById(foodid); 
		 
				if(p != null) 
				{
		%> 
		<tr> 
		<td><%=p.getFoodid()%></td> 
       <td><%=p.getCategory()%></td> 
       <td><%=p.getName()%></td> 
      <td><%= p.getPrice() %></td> 
       <td><button class="actionBtn" onclick="location.href = 'edit.jsp?foodid=<%= p.getFoodid()%>';">Edit</button></td> 
       <td><button class="actionBtn" onclick="location.href = 'delete.jsp?foodid=<%= p.getFoodid()%>';">Delete</button></td> 
       </tr> 
   <%		
         } 
         else 
       { 
        %> 
      <tr> 
       <td colspan="5">No record to display</td> 
       </tr> 
      <%  
	  } 
	} 
    else 
    { 
   %> 
   <tr> 
  <td colspan="5">No record to display</td> 
</tr> 
<%  		
} 
	%> 
	
		

</body>
</html>