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
int x= Integer.parseInt(request.getParameter("x1").trim());
String uname= request.getParameter("uname").toString();
String str= "GImage" + x + ".png";

try{
	   (new Connectiondb()).storeTimg(uname,str);
	   
 }
catch(Exception e){
	   e.printStackTrace();
}
response.sendRedirect("loginconfirm2.jsp?uname="+ request.getParameter("uname"));


%>
</body>
</html>