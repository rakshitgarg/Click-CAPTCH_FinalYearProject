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

String str= request.getParameter("cursorX");
String str1= request.getParameter("cursorY");

System.out.println("Cursor x: "+str);
System.out.println("Cursor y: "+str1);

//int x= Integer.parseInt(request.getParameter("x1").trim());
String uname= request.getParameter("uname");
application.setAttribute("uname",uname);
//String str= "Timage" + x + ".png";
System.out.println("name :"+uname);
try{
	  (new Connectiondb()).storeTimg1(uname,str,str1);
	   
 }
catch(Exception e){
	   e.printStackTrace();
}


response.sendRedirect("loginconfirm1.jsp?uname="+ application.getAttribute("uname"));


%>
</body>
</html>