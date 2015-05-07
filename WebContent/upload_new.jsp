<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.ep.*"%>
<%@page import="com.oreilly.servlet.MultipartRequest" %>
<%@page import="java.io.File" %>


<%@page import= "java.io.FileInputStream" %>
<%@page import="java.io.IOException" %>
<%@page import="java.io.InputStream" %>
<%@page import="java.io.PrintWriter" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.text.DateFormat" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Date" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>captcha</title>

<!-- SET: FAVICON -->
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
<!-- END: FAVICON -->

<!-- SET: STYLESHEET -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- END: STYLESHEET -->

<!-- SET: SCRIPTS -->
<script type="text/javascript"></script>
<!-- END: SCRIPTS -->

<meta name="description" content="Your description"/>
<meta name="keywords" content="keyword1 keyword2"/>

<!--[if lt IE 8]>
<style type="text/css">
	.header-container	{ padding-bottom:0;}
	.welcome	{ padding-top:12px;}
    .container	{ padding-bottom:0;}
    .footer-in	{ padding-bottom:0;}
</style>
<![endif]-->
<script type="text/javascript">
<!--

var Point = 1;
var X1, Y1, X2, Y2;

function FindPosition(oElement)
{
  if( typeof( oElement.offsetParent ) != "undefined" )
  {
    for( var posX = 0, posY = 0; oElement; oElement = oElement.offsetParent )
    {
      posX += oElement.offsetLeft;
      posY += oElement.offsetTop;
    }
    return [ posX, posY ];
  }
  else
  {
    return [ oElement.x, oElement.y ];
  }
}
 
function GetCoordinates(e)
{
 var PosX = 0;
 var PosY = 0;
 var ImgPos;
 ImgPos = FindPosition(myImg);
 if (!e) var e = window.event;
 if (e.pageX || e.pageY)
 {
  PosX = e.pageX;
  PosY = e.pageY;
 }
 else if (e.clientX || e.clientY)
   {
    PosX = e.clientX + document.body.scrollLeft + document.documentElement.scrollLeft;
    PosY = e.clientY + document.body.scrollTop + document.documentElement.scrollTop;
 }
 PosX = PosX - ImgPos[0];
 PosY = PosY - ImgPos[1];
 if (Point == 1)
 {
   X1 = PosX;
   Y1 = PosY;
   Point = 2;
 
   document.getElementById("x1").value = PosX;
   document.getElementById("y1").value = PosY;
//   document.getElementById("x1").innerHTML = PosX;
//   document.getElementById("y1").innerHTML = PosY;
 }
 else
 {
   X2 = PosX;
   Y2 = PosY;
   Point = 3;
   
    <%
String x2="<script>document.writeln(PosX)</script>";   
String y2="<script>document.writeln(PosY)</script>";  
%>
   document.getElementById("x2").value = PosX;
   document.getElementById("y2").value = PosY;
   document.form1.drawbutton.disabled = false;
 }
}

function Clear()
{
  Point = 1;
  document.getElementById("x1").innerHTML = '';
  document.getElementById("y1").innerHTML = '';
  document.getElementById("x2").innerHTML = '';
  document.getElementById("y2").innerHTML = '';
  document.form1.drawbutton.disabled = true;
  myImg.src = "rectangle.asp";
}

function Draw()
{
  myImg.src = "rectangle.asp?x1=" + X1 + "&y1=" + Y1 + "&x2=" + X2 + "&y2=" + Y2;
  document.form1.drawbutton.disabled = true;
}

function Initialisation()
{ 
  document.form1.drawbutton.disabled = true
}

//-->
</script>

</head>

<body onload="Initialisation();">
<%
if(request.getParameter("status")!=null){
    out.println("<script>alert('uploded...')</script>");
}
%>
<!-- wrapper starts -->
<div class="wrapper"> 
  
  <!-- Header Starts -->
  <div class="header">
    <div class="header-container">
         <p style="font-size: 25px;color: #ffffff"> Captcha as Graphical Passwords </p>
      <div class="logo"> <a href="#"></a> </div>
      <div class="toll-free">
        <p></p>
      </div>
      <div class="clear"></div>
    </div>
  </div>
  <!-- Header ends --> 
  
  <!-- Nav start -->
  <div class="nav">
    <div class="nav-in">
     <ul>
          
        <li><a href="upload.jsp?uname=<%= request.getParameter("uname")  %>">Upload</a></li>
        <li><a href="download.jsp?uname=<%= request.getParameter("uname")  %>">Download</a></li>
      <li class="last"><a href="index.html">Logout </a></li>
        
      </ul>
      <div class="clear"></div>
    </div>
  </div>
  <!-- Nav end --> 
  
  <!-- maincontent Starts -->
  <div class="container">
    <div class="container-in"> <img src="images/container-bg.jpg" width="940" height="327" alt="img" />
    
      
       
        </div>
    
     
      <div class="clear"></div>
      <div class="welcome">
<!--          <%
HttpSession user=request.getSession();  
String u=application.getAttribute("uname").toString();       
%>
<center><h5 style="color: brown">  Welcome ! <%=u%></h5></center>-->
<center>
    
<div STYLE="">
      
    Upload File for User : <br></br>
   <%
final String filepath="E:/";
response.setContentType("text/html;charset=UTF-8");
// PrintWriter out = response.getWriter();
 try {
  //  HttpSession user=request.getSession();
 	System.out.println("Inside RR");
%>
  <input type="file" name="file"></input><br>
        <input type="submit" value=" Upload "></input></br>


<% 	
   // String owner=request.getAttribute("uname").toString();
     String name= request.getParameter("uname");
 	 System.out.println("Name : "+name);
     MultipartRequest m=new MultipartRequest(request,filepath);
    File file=m.getFile("file");
  //  String name= m.getParameter("uname");
   // System.out.println(name); 
    /*String  x1=m.getParameter("xx1");
     String  y1=m.getParameter("yy1");
      String  x2=m.getParameter("xx2");
       String  y2=m.getParameter("yy2");*/
       
//    out.println(x1+" "+y1+" "+x2 +" "+y2);
        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
//get current date time with Date()
  Date date = new Date();
//     System.out.println(dateFormat.format(date));
      String time=dateFormat.format(date); 
    
    InputStream is=new FileInputStream(file);
    System.out.println(file.getName());
    Connection con= Connectiondb.getCon();
    Statement st=con.createStatement();
    PreparedStatement ps=con.prepareStatement("insert into file (filename,file,owner,time)values(?,?,?,?)");
    ps.setString(1, file.getName());
    ps.setAsciiStream(2, is);
    ps.setString(3,name);
 //   ps.setString(4, x1);
  //  ps.setString(5, y1);
  //  ps.setString(6, x2);
  //  ps.setString(7, y2);
    ps.setString(4, time);
    boolean status= ps.execute();
   
    response.sendRedirect("upload.jsp?status='uploaded'");
//    if(status){
//        out.println("success");
//    }
//    else{
//        out.println("error");
//    }
 } 
 catch(Exception e){
//     out.println(e);
 }
 finally {            
 //    out.close();
 }



%>

</div>
</center>
          
        <p><a href="#"></a></p>
      </div>
      <div class="bottom-cont1">
        <h6></h6>
        <p> </p>
      </div>
<!--      <div class="bottom-cont1">
        <h6></h6>
        <ul>
          <li><a href="#"></a></li>
          <li><a href="#"></a></li>
          <li><a href="#"></a></li>
          <li><a href="#"></a></li>
          <li><a href="#"></a></li>
          <li><a href="#"></a></li>
          <li><a href="#"> </a></li>
          <li><a href="#"></a></li>
        </ul>
      </div>-->
      <div class="bottom-cont1 last">
        <h6></h6>
        <span></span>
        <p></p>
        <span></span>
        <p></p>
      </div>
      <div class="clear"></div>
    </div>
  </div>
  <!-- aincontent ends --> 
  
  <!-- footer starts -->
  <div class="footer">
    <div class="footer-in">
      <div class="social-icons">
        <ul>
          <li><a href="#"></a></li>
          <li><a href="#"></a></li>
          <li class="last"></a></li>
        </ul>
        <div class="clear"></div>
      </div>
      <div class="copy">
        <p> <a href="http://www.freecsstemplates.com" target="_blank" rel="nofollow"></a></p>
      </div>
      <div class="clear"></div>
    </div>
  </div>
  <!-- footer ends --> 
  
</div>
<!-- wrapper ends -->

</body>
</html>
