<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LOGIN</title>
<style>
body {
background-image:url("backg5.jpg");

background-attachment:fixed;
background-repeat:no-repeat;
background-size:1500px 1000px;
}
input[type=text]{
width:100%;
padding:8px 10px;
margin:8px 0px;
display:inline-block;
border:1px solid #ccc;
border-radius:4px;
box-sizing:border-box;
}
input[type=password]{
width:100%;
padding:8px 10px;
margin:8px 0px;
display:inline-block;
border:1px solid #ccc;
border-radius:4px;
box-sizing:border-box;
}
input[type=submit]{
width:100%;
background-color:#4caf50;
color:white;
padding:14px 20px;
margin:8px 0px;
display:inline-block;
border:none;
border-radius:4px;
cursor:pointer;
}
input[type=submit]:hover{
background-color:#45a049;
}
div{
background-color:darkseagreen;
margin-top:300px;
margin-left:400px;
margin-right:20px;
margin-bottom:50px;
width:50%;
padding-bottom:20px;
padding-left:20px;
padding-right:20px;
padding-top:20px;
height:200px;
border-radius:4px;
}

</style>

</head>
<body>
<div align="center">
<form action="processlogin.jsp" method="post">
<table class="loginform">
<tr>
<td>
<label for="username">username</label></td>
<td>
<input type="text" id="username" name="username" class="SearchTextField"/>
</td>
</tr>
<tr>
<td>
<label for="password">password</label></td>
<td>
<input type="password" id="password" name="password" class="SearchTextField"/>
</td>
</tr>
<tr>
<td colspan="2" align="center">
<input type="submit" value="login" class="actionBtn"/>
</td>
</tr>
</table></form>
<a href="signup.jsp">New Sign Up</a>
</div>
</body>
</html>