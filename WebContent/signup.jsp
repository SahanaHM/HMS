<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body {
background-image:url("backg2.jpg");
 background-size: 1500px 900px;
 background-attachment:fixed;
background-repeat:no-repeat;

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
background-color:lightblue;
margin-top:150px;
margin-left:450px;
margin-right:20px;
margin-bottom:50px;
width:30%;
padding-bottom:20px;
padding-left:20px;
padding-right:20px;
padding-top:20px;
height:250px;
border-radius:4px;
}

</style>
</head>
<body>
<div>
<form action="processRegister.jsp" method="post">
<label for="username">username</label>
<input type="text" id="userName" name="userName"/>
<label for="password">password</label>
<input type="text" id="password" name="password">
<label for="password1">Confirm password</label>
<input type="text" id="password1" name="password1">
<input type="submit" value="Signup"/>
</form>
</div>
</body>
</html>