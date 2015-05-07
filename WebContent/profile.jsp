<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.ep.Connectiondb" %>
    <%@page import="java.sql.ResultSet" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
User : <%= application.getAttribute("uname")  %>
<%
try{
	   ResultSet rs= (new Connectiondb()).getProfile(request.getParameter("uname"));
	  
	   while(rs.next()){
		   %>
		
Location :		<%=  rs.getString(4)  %> <br>
		<%=   rs.getInt(5)  %>
		<%= rs.getString(6)  %>
		 <%=  rs.getInt(7) %>
		 <%= rs.getString(8) %>
		  
		 <%
	   }
	   
}
catch(Exception e){
	   e.printStackTrace();
}

%>
</body>
</html>