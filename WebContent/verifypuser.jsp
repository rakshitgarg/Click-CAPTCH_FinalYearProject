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
System.out.println(application.getAttribute("uname"));
System.out.println(request.getParameter("pwd"));
try{
	flag=   (new Connectiondb()).testpwd(application.getAttribute("uname").toString(),request.getParameter("pwd"));
	   
}
catch(Exception e){
	   e.printStackTrace();
}
if(flag==true)
response.sendRedirect("login.jsp?uname=" + request.getParameter("uname"));
else
	response.sendRedirect("index.html?uname=" + request.getParameter("uname"));


%>



</body>
</html>