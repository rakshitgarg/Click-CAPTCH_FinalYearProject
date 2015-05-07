<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.ep.Connectiondb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String pwd1= request.getParameter("upwd1");
String pwd2= request.getParameter("upwd2");
System.out.println(pwd1);
System.out.println(request.getParameter("uname"));
String name = request.getParameter("uname");
if(pwd1.equals(pwd2))
{
	(new Connectiondb()).storepwd(name,pwd1);
	response.sendRedirect("login.jsp");
}
else
	response.sendRedirect("getpwd.jsp");



%>
</body>
</html>