<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/bootstrap.min.css" rel="stylesheet" >
<link href="css/style1.css" rel="stylesheet" >
<title>Insert title here</title>
</head>
<body background="WebpageImg\background.jpg" style="height:800px;">
<div style="float:right;padding-right:100px;padding-top:15px;">
<% 
String name= application.getAttribute("uname").toString();
System.out.println("Name :"+ name);
if(name.equals(null))
{	response.sendRedirect("index.html");
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%
}else{
%>

</div>


<nav class="navbar navbar-inverse" role="navigation">
 <div class="container">
  <div class="navbar-header">
    <ul class="nav navbar-nav">
  <li role="presentation" class="active"><a href="upload.jsp?uname=<%= application.getAttribute("uname")  %>">Upload</a></li>
  <li role="presentation"><a href="download.jsp?uname=<%= request.getParameter("uname")  %>">Download</a></li>
 <li role="presentation"><a href="logout.jsp">Logout</a></li>
 <p class="navbar-text" style="padding-left:680px;">Welcome <a href="#"><% out.println(application.getAttribute("uname")); %></a></p>
</ul>
  </div>
  </div>
</nav>


</body>
<%
}
%>
</html>