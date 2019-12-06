<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
     <%@page import="dao.*" %>
<%@page import="pojo.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
div {
background-color:;
margin-top:150px;
margin-left:300px;
margin-right:20px;
margin-bottom:50px;
width:40%;
padding-bottom:20px;
padding-left:20px;
padding-right:20px;
padding-top:20px;
height:150px;
border-radius:4px;

}
body{
background-image:url("backg4.jpg");
background-repeat:no-repeat;
background-size:1300px 900px;
}


</style>
</head>
<body>

<% String productId = request.getParameter("foodid"); 
editpojo product = editdao.getProductById(productId); 
%>
  	<div align="center"> 
 		<form action="processedit.jsp" method="post"> 
 			<table class="productTable"> 
 				<thead> 
 					<tr> 
 						<th colspan="2"> 
 							Food Details 
 						</th> 
 					</tr>  				
 					</thead> 
 				<tr> 
 					<td>FoodId</td> 
 					<td><input type="text" name="foodid" size="20" value="<%=product.getFoodid()%>" class="productTextField" readonly ></td>
 				</tr> 
 				<tr>  					<td> Category</td> 
 					<td><input type="text" name="category" size="20" value="<%=product.getCategory()%>" class="productTextField"></td>
 						 
 				</tr> 
 				<tr>  	
 					<td>Name</td> 
 					<td><input type="text" name="name" size="20" value="<%=product.getName()%>" class="productTextField"></td>
 				</tr>
 				<tr> 
 				 <td>Price</td> 
 				 <td><input type="text" name="price" size="20" value="<%=product.getPrice()%>" class="productTextField"></td>
 				</tr> 
			</table> 
			<button class="actionBtn" style="margin-top:10px">Save</button> 
		</form> 
	</div>  
 

 


</body>
</html>