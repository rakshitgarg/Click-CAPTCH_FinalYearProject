<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.*"%>
<%@page import="com.ep.Connectiondb"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.rowset.serial.SerialBlob" %>
<%@page import="java.awt.image.BufferedImage" %>
<%@page import="java.io.*" %>
<%@page import="java.awt.image.WritableRaster" %>
<%@page import="java.awt.image.DataBufferByte" %>
<%@page import="javax.imageio.ImageIO" %>
<%@page import="java.io.IOException" %>
 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String username = request.getParameter("uname");
application.setAttribute("uname",request.getParameter("uname"));
Connection con= Connectiondb.getCon();
Statement st=con.createStatement();
ResultSet rt=st.executeQuery("select * from userregistration where user='"+username+"'"); 
if(rt.next()){
if(rt.getInt(5) == 1)	
  response.sendRedirect("mailer1.jsp?uname="+username);
if(rt.getInt(5) == 2)
  response.sendRedirect("mailer1.jsp?uname="+username);	
if(rt.getInt(5) == 3)	
  response.sendRedirect("mailer1.jsp?uname="+username);
}
else
out.write("Username does not exist");
%>
</body>
</html>