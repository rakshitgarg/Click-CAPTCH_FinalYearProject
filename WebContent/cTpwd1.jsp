<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="com.ep.Connectiondb"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
boolean flag=false;
try{
	   flag =(new Connectiondb()).confirmfPwd(request.getParameter("uname"));
	  
}
catch(Exception e){
	   e.printStackTrace();
}
if(flag == true)
	{
	(new Connectiondb()).cleanupfinalimageview();
	response.sendRedirect("login.jsp");
	}
	//response.sendRedirect("login.jsp?uname=" + request.getParameter("uname"));
else
{
	(new Connectiondb()).cleanupfinalimageview();
	response.sendRedirect("index.html");	
}
%>
</body>
</html>