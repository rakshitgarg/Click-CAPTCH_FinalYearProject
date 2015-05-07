<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.ep.*"%>
    
    
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Graphical Password</title>
<style>a:active{background:red}</style>
<script>

</script>
</head>
<body align="center">
<h3> Confirm your Password</h3>
<div style="padding-top:110px;padding-left:450px;">

<form action="cTpwd1.jsp?uname=<%= request.getParameter("uname") %>" method="post">
<div  style="border-style:solid; border-color:black; width:412px;">
<div>
<a href="storepwd1.jsp?x1=000+&uname=<%= request.getParameter("uname") %>" id="0" ><img src= "img\Timage000.png" width="55"  height="55"> </a>
<a href="storepwd1.jsp?x1=010+&uname=<%= request.getParameter("uname") %>" id="1" ><img src= "img\Timage010.png" width="55"  height="55"> </a>
<a href="storepwd1.jsp?x1=020+&uname=<%= request.getParameter("uname") %>" id="2" ><img src= "img\Timage020.png" width="55"  height="55"> </a>
<a href="storepwd1.jsp?x1=030+&uname=<%= request.getParameter("uname") %>" id="3" ><img src= "img\Timage030.png" width="55"  height="55"> </a>
<a href="storepwd1.jsp?x1=040+&uname=<%= request.getParameter("uname") %>" id="4" ><img src= "img\Timage040.png" width="55"  height="55"> </a>
<a href="storepwd1.jsp?x1=050+&uname=<%= request.getParameter("uname") %>" id="5" ></a><img src= "img\Timage050.png" width="55"  height="55"> </a>
<a href="storepwd1.jsp?x1=060+&uname=<%= request.getParameter("uname") %>" id="6" ><img src= "img\Timage060.png" width="55"  height="55"> </a></div>
<div> 
<a href="storepwd1.jsp?x1=070+&uname=<%= request.getParameter("uname") %>" id="7" ><img src= "img\Timage070.png" width="55"  height="55"> </a>
<a href="storepwd1.jsp?x1=080+&uname=<%= request.getParameter("uname") %>" id="8" ><img src= "img\Timage080.png" width="55"  height="55"> </a>
<a href="storepwd1.jsp?x1=090+&uname=<%= request.getParameter("uname") %>" id="9" ><img src= "img\Timage090.png" width="55"  height="55"> </a>
<a href="storepwd1.jsp?x1=100+&uname=<%= request.getParameter("uname") %>" id="10" ><img src= "img\Timage100.png" width="55"  height="55"> </a>
<a href="storepwd1.jsp?x1=110+&uname=<%= request.getParameter("uname") %>" id="11" ><img src= "img\Timage110.png" width="55"  height="55"> </a>
<a href="storepwd1.jsp?x1=120+&uname=<%= request.getParameter("uname") %>" id="12" ><img src= "img\Timage120.png" width="55"  height="55"> </a>
<a href="storepwd1.jsp?x1=130+&uname=<%= request.getParameter("uname") %>" id="13" ><img src= "img\Timage130.png" width="55"  height="55"> </a>
</div>
<div>
<a href="storepwd1.jsp?x1=140+&uname=<%= request.getParameter("uname") %>" id="14" ><img src= "img\Timage140.png" width="55"  height="55"> </a>
<a href="storepwd1.jsp?x1=150+&uname=<%= request.getParameter("uname") %>" id="15" ><img src= "img\Timage150.png" width="55"  height="55"> </a>
<a href="storepwd1.jsp?x1=160+&uname=<%= request.getParameter("uname") %>" id="16" ><img src= "img\Timage160.png" width="55"  height="55"> </a>
<a href="storepwd1.jsp?x1=170+&uname=<%= request.getParameter("uname") %>" id="17" ><img src= "img\Timage170.png" width="55"  height="55"> </a>
<a href="storepwd1.jsp?x1=180+&uname=<%= request.getParameter("uname") %>" id="18" ><img src= "img\Timage180.png" width="55"  height="55"> </a>
<a href="storepwd1.jsp?x1=190+&uname=<%= request.getParameter("uname") %>" id="19" ><img src= "img\Timage190.png" width="55"  height="55"> </a>
<a href="storepwd1.jsp?x1=200+&uname=<%= request.getParameter("uname") %>" id="20" ><img src= "img\Timage200.png" width="55"  height="55"> </a>
</div>
<div>
<a href="storepwd1.jsp?x1=210+&uname=<%= request.getParameter("uname") %>" id="21" ><img src= "img\Timage210.png" width="55"  height="55"> </a>
<a href="storepwd1.jsp?x1=220+&uname=<%= request.getParameter("uname") %>" id="22" ><img src= "img\Timage220.png" width="55"  height="55"> </a>
<a href="storepwd1.jsp?x1=230+&uname=<%= request.getParameter("uname") %>" id="23" ><img src= "img\Timage230.png" width="55"  height="55"> </a>
<a href="storepwd1.jsp?x1=240+&uname=<%= request.getParameter("uname") %>" id="24" ><img src= "img\Timage240.png" width="55"  height="55"> </a>
<a href="storepwd1.jsp?x1=250+&uname=<%= request.getParameter("uname") %>" id="25" ><img src= "img\Timage250.png" width="55"  height="55"> </a>
<a href="storepwd1.jsp?x1=260+&uname=<%= request.getParameter("uname") %>" id="26" ><img src= "img\Timage260.png" width="55"  height="55"> </a>
<a href="storepwd1.jsp?x1=270+&uname=<%= request.getParameter("uname") %>" id="27" ><img src= "img\Timage270.png" width="55"  height="55"> </a>
</div>
<div>
<a href="storepwd1.jsp?x1=280+&uname=<%= request.getParameter("uname") %>" id="28" ><img src= "img\Timage280.png" width="55"  height="55"> </a>
<a href="storepwd1.jsp?x1=290+&uname=<%= request.getParameter("uname") %>" id="29" ><img src= "img\Timage290.png" width="55"  height="55"> </a>
<a href="storepwd1.jsp?x1=300+&uname=<%= request.getParameter("uname") %>" id="30" ><img src= "img\Timage300.png" width="55"  height="55"> </a>
<a href="storepwd1.jsp?x1=310+&uname=<%= request.getParameter("uname") %>" id="31" ><img src= "img\Timage310.png" width="55"  height="55"> </a>
<a href="storepwd1.jsp?x1=320+&uname=<%= request.getParameter("uname") %>" id="32" ><img src= "img\Timage320.png" width="55"  height="55"> </a>
<a href="storepwd1.jsp?x1=330+&uname=<%= request.getParameter("uname") %>" id="33" ><img src= "img\Timage330.png" width="55"  height="55"> </a>
<a href="storepwd1.jsp?x1=340+&uname=<%= request.getParameter("uname") %>" id="34" ><img src= "img\Timage340.png" width="55"  height="55"> </a>
</div>
<div>
<a href="storepwd1.jsp?x1=350+&uname=<%= request.getParameter("uname") %>" id="35" ><img src= "img\Timage350.png" width="55"  height="55"> </a>
<a href="storepwd1.jsp?x1=360+&uname=<%= request.getParameter("uname") %>" id="36" ><img src= "img\Timage360.png" width="55"  height="55"> </a>
<a href="storepwd1.jsp?x1=370+&uname=<%= request.getParameter("uname") %>" id="37" ><img src= "img\Timage370.png" width="55"  height="55"> </a>
<a href="storepwd1.jsp?x1=380+&uname=<%= request.getParameter("uname") %>" id="38" ><img src= "img\Timage380.png" width="55"  height="55"> </a>
<a href="storepwd1.jsp?x1=390+&uname=<%= request.getParameter("uname") %>" id="39" ><img src= "img\Timage390.png" width="55"  height="55"> </a>
<a href="storepwd1.jsp?x1=400+&uname=<%= request.getParameter("uname") %>" id="40" ><img src= "img\Timage400.png" width="55"  height="55"> </a>
<a href="storepwd1.jsp?x1=410+&uname=<%= request.getParameter("uname") %>" id="41" ><img src= "img\Timage410.png" width="55"  height="55"> </a>
</div>
<div>
<a href="storepwd1.jsp?x1=420+&uname=<%= request.getParameter("uname") %>" id="42" ><img src= "img\Timage420.png" width="55"  height="55"> </a>
<a href="storepwd1.jsp?x1=430+&uname=<%= request.getParameter("uname") %>" id="43" ><img src= "img\Timage430.png" width="55"  height="55"> </a>
<a href="storepwd1.jsp?x1=440+&uname=<%= request.getParameter("uname") %>" id="44" ><img src= "img\Timage440.png" width="55"  height="55"> </a>
<a href="storepwd1.jsp?x1=450+&uname=<%= request.getParameter("uname") %>" id="45" ><img src= "img\Timage450.png" width="55"  height="55"> </a>
<a href="storepwd1.jsp?x1=460+&uname=<%= request.getParameter("uname") %>" id="46" ><img src= "img\Timage460.png" width="55"  height="55"> </a>
<a href="storepwd1.jsp?x1=470+&uname=<%= request.getParameter("uname") %>" id="47" ><img src= "img\Timage470.png" width="55"  height="55"> </a>
<a href="storepwd1.jsp?x1=480+&uname=<%= request.getParameter("uname") %>" id="48" ><img src= "img\Timage480.png" width="55"  height="55"> </a>
</div>
</div>
<br>
<div style="float:left; padding-left:170px;">
<button  type="submit" id="sub1">Submit</button>
</br>
</div>

</form>
<!-- <img src="finalTImg.png" width="350" height="350">   -->
</div>
</body>
</html>