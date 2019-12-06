<%@page import="dao.daologin" %>
<%@page import="pojo.pojologin" %>
    <%
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    if(daologin.isUserValid(new pojologin(username,password)))
    {
    	session.setAttribute("username",username);
    	session.setMaxInactiveInterval(300);
    	response.sendRedirect("home.jsp");
    	
    	
    }
    else
    {
    	response.sendRedirect("loginfailed.jsp");	
    	
    }
    %>
