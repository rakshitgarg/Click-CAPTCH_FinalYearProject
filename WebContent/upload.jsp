<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.ep.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/bootstrap.min.css" rel="stylesheet" >
<link href="css/style1.css" rel="stylesheet" >
<title>captcha</title>

<meta name="description" content="Your description"/>
<meta name="keywords" content="keyword1 keyword2"/>

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

<%
if(request.getParameter("status")!=null){
    out.println("<script>alert('uploded...')</script>");
}
%>

<body background="WebpageImg\background.jpg" style="height:800px;" onload="Initialisation();">

  <nav class="navbar navbar-inverse" role="navigation">
 <div class="container">
  <div class="navbar-header">
    <ul class="nav navbar-nav">
  <li role="presentation" class="active"><a href="upload.jsp?uname=<%= request.getParameter("uname")  %>">Upload</a></li>
  <li role="presentation"><a href="download.jsp?uname=<%= request.getParameter("uname")  %>">Download</a></li>
 <li role="presentation"><a href="logout.jsp">Logout</a></li>
 <p class="navbar-text" style="padding-left:680px;">Welcome <a href="#"><% out.println(application.getAttribute("uname")); %></a></p>
</ul>
  </div>
  </div>
</nav>
  
  
  <!-- maincontent Starts -->
 
    <div class="container-in"> 
    
      
       
        </div>
  <div class="container">   
     
          <div class="welcome">
<!--          <%
HttpSession user=request.getSession();  
String u=application.getAttribute("uname").toString();       
%>
<center><h5 style="color: brown">  Welcome ! <%=u%></h5></center>-->
<center>
    
<div>
    <div class="container" style="padding-top:150px;color:white;">
       
        <div style="float:center;background-color:#007F00; box-shadow: 10px 10px 5px #0D016D;border-radius:6px;width:400px;">
        &nbsp;&nbsp;
        
        <h3 style="padding-left:10px;">Upload File </h3>
        <div style="padding-left:5px;">
        <img src="WebpageImg\line.jpg" />
        </div></br>  
    <form  action="upload?uname=<%=request.getParameter("uname") %>" name="form1" method="post" enctype="multipart/form-data">
     
     <div class="input-group" style="padding-left:50px;"> Upload File for User : <input name="uname" value="<%= request.getParameter("uname") %>" readonly type="text" class="form-control" placeholder="Username"  style="border-radius:6px; width:300px;text-align:center; font-style:italic;" aria-describedby="basic-addon2"></div><br></br>
     
     
        <input type="file" name="file"></input><br>
        
        
<button type="submit" style="height:35px; border-color:#000000;padding-top:5px;" class="btn btn-default btn-lg">
              <span  aria-hidden="true"></span> Submit
            </button></br><br></br>
<!--<input type="button" name="clearbutton" value="Clear" onclick="Clear();" />
<input type="button" name="drawbutton" value="Draw Rectangle" onclick="Draw();" />-->
</form>
</div>
<script type="text/javascript">
<!--
var myImg = document.getElementById("myImgId");
myImg.onmousedown = GetCoordinates; 
//-->
</script>

</div>
</center>
          
    

</body>
</html>
