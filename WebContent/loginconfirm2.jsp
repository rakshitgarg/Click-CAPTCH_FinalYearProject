<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.ep.*"%>
<%@page import= "java.util.ArrayList" %>
<%@page import= "java.util.Collections" %>
<%@page import= "java.io.File" %> 
<%@page import= "java.util.ListIterator" %>

    <%@page import="com.ep.*"%>
    <%@page import="java.util.*" %>
    <%@page import="java.sql.*"%>
    <%@page import= "java.io.*" %>
    <%@page import= "java.io.IOException" %>
    <%@page import="javax.imageio.ImageIO" %>
    <%@page import="javax.sql.rowset.serial.SerialBlob" %>
<%@page import="java.io.IOException" %>
<%@page import="java.awt.image.BufferedImage" %>
<%@page import="java.sql.SQLException" %>
<%@page import="java.io.ByteArrayInputStream" %>
<%@page import="com.ep.Connectiondb"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.InputStream" %>
<%@page import="java.io.FileOutputStream" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width-device-width"  initial-scale="1.0"/>
<title>Graphical Password</title>

<script type="text/javascript">
function LoadOnce() 
{ 
if(flag)	
window.location.reload();
flag=false;
}

function loadXMLDoc()
{
var cursorX;
var cursorY;
var xmlhttp;

document.onmousedown = function(e){
    cursorX = e.pageX-310;
    cursorY = e.pageY-59;

if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
    }
  }
xmlhttp.open("POST","loginstorepwd2.jsp",true);
xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
xmlhttp.send("cursorX="+cursorX +"&cursorY="+ cursorY+"&uname=<%= request.getParameter("uname")%>");
}

} 
</script> 

</head>

<%
InputStream in=null;
try{
	String name=null;
	Blob blob=null;
	int len=0;
	Connection con= Connectiondb.getCon();
	PreparedStatement ps=null;
	String sql="select * from storeimg";	
	ps= con.prepareStatement(sql);
	ResultSet rs= ps.executeQuery();
	while(rs.next()){
		name= rs.getString(1);
		in = rs.getBinaryStream(2);
		len= rs.getInt(3);
	}
	
	//InputStream is = blob.getBinaryStream();
    //FileOutputStream fos = new FileOutputStream("C:/workspace/Captcha/WebContent/img/"+ "Tcap.png");
	OutputStream f = new FileOutputStream(new File("C:/workspace/Captcha/WebContent/img/"+"Tcap.png"));
	int c = 0;
	while ((c = in.read()) > -1) {
		f.write(c);
	}
	f.close();
	in.close();
     
}catch(Exception e){
	e.printStackTrace();
}

%>

<body onLoad="LoadOnce();" align="center" style="" id="myDiv">
<h2> Select Your Password</h2> 
<form action="verifygpwd.jsp?uname=<%= request.getParameter("uname") %>" method="post">

<img style="border-style:solid; border-color:black;width:750px;height:500px" src="img\Tcap.png"  onClick="loadXMLDoc();"  />

<br>
<button type="submit" id="sub1">Submit</button>
</form>
<!-- <img src="finalTImg.png" width="350" height="350">   -->
</body>
</html>