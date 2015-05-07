<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.ep.*"%>
<%@page import= "java.util.ArrayList" %>
<%@page import= "java.util.Collections" %>
<%@page import= "java.io.File" %> 
<%@page import= "java.util.ListIterator" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Graphical Password</title>
<style>a:active{background:red}</style>
<script>

</script>
</head>
<%
ArrayList<Integer> list = new ArrayList<Integer>();
for (int i=0; i<175; i++) {
    list.add(new Integer(i));
}
Collections.shuffle(list);   // shuffle the list to create non-sorted list 
System.out.println(list);
File[] imgFiles = new File[175];
int j=0;
ListIterator lit= list.listIterator();
while(lit.hasNext())
  imgFiles[j++] = new File("GImage" + lit.next() + ".png");
%>

<body align="center">
<h3> Select your Password</h3>
<div style="padding-top:80px;padding-left:250px; ">

<form action="gpwd.jsp?uname=<%= request.getParameter("uname") %>" method="post">
<div   style="border-style:solid; border-color:black; width:910px;">
<div>
<a href="gstorepwd.jsp?x1=<%= imgFiles[0].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="0" ><img src= "img\<%= imgFiles[0]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[1].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="1" ><img src= "img\<%= imgFiles[1]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[2].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="2" ><img src= "img\<%= imgFiles[2]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[3].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="3" ><img src= "img\<%= imgFiles[3]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[4].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="4" ><img src= "img\<%= imgFiles[4]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[5].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="5" ><img src= "img\<%= imgFiles[5]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[6].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="6" ><img src= "img\<%= imgFiles[6]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[7].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="0" ><img src= "img\<%= imgFiles[7]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[8].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="1" ><img src= "img\<%= imgFiles[8]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[9].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="2" ><img src= "img\<%= imgFiles[9]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[10].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="3" ><img src= "img\<%= imgFiles[10]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[11].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="4" ><img src= "img\<%= imgFiles[11]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[12].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="5" ><img src= "img\<%= imgFiles[12]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[13].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="6" ><img src= "img\<%= imgFiles[13]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[14].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="6" ><img src= "img\<%= imgFiles[14]  %>" width="55"  height="55"> </a></div>

<div> 
<a href="gstorepwd.jsp?x1=<%= imgFiles[15].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="0" ><img src= "img\<%= imgFiles[15]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[16].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="1" ><img src= "img\<%= imgFiles[16]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[17].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="2" ><img src= "img\<%= imgFiles[17]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[18].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="3" ><img src= "img\<%= imgFiles[18]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[19].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="4" ><img src= "img\<%= imgFiles[19]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[20].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="5" ><img src= "img\<%= imgFiles[20]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[21].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="6" ><img src= "img\<%= imgFiles[21]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[22].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="0" ><img src= "img\<%= imgFiles[22]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[23].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="1" ><img src= "img\<%= imgFiles[23]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[24].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="2" ><img src= "img\<%= imgFiles[24]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[25].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="3" ><img src= "img\<%= imgFiles[25]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[26].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="4" ><img src= "img\<%= imgFiles[26]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[27].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="5" ><img src= "img\<%= imgFiles[27]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[28].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="6" ><img src= "img\<%= imgFiles[28]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[29].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="6" ><img src= "img\<%= imgFiles[29]  %>" width="55"  height="55"> </a></div>

<div>
<a href="gstorepwd.jsp?x1=<%= imgFiles[30].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="0" ><img src= "img\<%= imgFiles[30]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[31].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="1" ><img src= "img\<%= imgFiles[31]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[32].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="2" ><img src= "img\<%= imgFiles[32]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[33].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="3" ><img src= "img\<%= imgFiles[33]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[34].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="4" ><img src= "img\<%= imgFiles[34]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[35].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="5" ><img src= "img\<%= imgFiles[35]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[36].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="6" ><img src= "img\<%= imgFiles[36]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[37].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="0" ><img src= "img\<%= imgFiles[37]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[38].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="1" ><img src= "img\<%= imgFiles[38]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[39].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="2" ><img src= "img\<%= imgFiles[39]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[40].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="3" ><img src= "img\<%= imgFiles[40]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[41].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="4" ><img src= "img\<%= imgFiles[41]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[42].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="5" ><img src= "img\<%= imgFiles[42]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[43].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="6" ><img src= "img\<%= imgFiles[43]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[44].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="6" ><img src= "img\<%= imgFiles[44]  %>" width="55"  height="55"> </a></div>

<div>
<a href="gstorepwd.jsp?x1=<%= imgFiles[45].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="0" ><img src= "img\<%= imgFiles[45]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[46].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="1" ><img src= "img\<%= imgFiles[46]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[47].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="2" ><img src= "img\<%= imgFiles[47]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[48].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="3" ><img src= "img\<%= imgFiles[48]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[49].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="4" ><img src= "img\<%= imgFiles[49]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[50].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="5" ><img src= "img\<%= imgFiles[50]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[51].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="6" ><img src= "img\<%= imgFiles[51]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[52].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="0" ><img src= "img\<%= imgFiles[52]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[53].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="1" ><img src= "img\<%= imgFiles[53]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[54].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="2" ><img src= "img\<%= imgFiles[54]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[55].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="3" ><img src= "img\<%= imgFiles[55]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[56].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="4" ><img src= "img\<%= imgFiles[56]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[57].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="5" ><img src= "img\<%= imgFiles[57]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[58].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="6" ><img src= "img\<%= imgFiles[58]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[59].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="6" ><img src= "img\<%= imgFiles[59]  %>" width="55"  height="55"> </a></div>

<div>
<a href="gstorepwd.jsp?x1=<%= imgFiles[60].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="0" ><img src= "img\<%= imgFiles[60]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[61].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="1" ><img src= "img\<%= imgFiles[61]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[62].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="2" ><img src= "img\<%= imgFiles[62]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[63].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="3" ><img src= "img\<%= imgFiles[63]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[64].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="4" ><img src= "img\<%= imgFiles[64]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[65].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="5" ><img src= "img\<%= imgFiles[65]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[66].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="6" ><img src= "img\<%= imgFiles[66]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[67].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="0" ><img src= "img\<%= imgFiles[67]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[68].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="1" ><img src= "img\<%= imgFiles[68]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[69].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="2" ><img src= "img\<%= imgFiles[69]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[70].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="3" ><img src= "img\<%= imgFiles[70]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[71].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="4" ><img src= "img\<%= imgFiles[71]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[72].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="5" ><img src= "img\<%= imgFiles[72]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[73].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="6" ><img src= "img\<%= imgFiles[73]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[74].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="6" ><img src= "img\<%= imgFiles[74]  %>" width="55"  height="55"> </a></div>

<div>
<a href="gstorepwd.jsp?x1=<%= imgFiles[75].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="0" ><img src= "img\<%= imgFiles[75]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[76].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="1" ><img src= "img\<%= imgFiles[76]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[77].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="2" ><img src= "img\<%= imgFiles[77]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[78].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="3" ><img src= "img\<%= imgFiles[78]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[79].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="4" ><img src= "img\<%= imgFiles[79]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[80].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="5" ><img src= "img\<%= imgFiles[80]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[81].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="6" ><img src= "img\<%= imgFiles[81]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[82].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="0" ><img src= "img\<%= imgFiles[82]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[83].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="1" ><img src= "img\<%= imgFiles[83]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[84].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="2" ><img src= "img\<%= imgFiles[84]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[85].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="3" ><img src= "img\<%= imgFiles[85]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[86].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="4" ><img src= "img\<%= imgFiles[86]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[87].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="5" ><img src= "img\<%= imgFiles[87]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[88].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="6" ><img src= "img\<%= imgFiles[88]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[89].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="6" ><img src= "img\<%= imgFiles[89]  %>" width="55"  height="55"> </a></div>

<div>
<a href="gstorepwd.jsp?x1=<%= imgFiles[90].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="0" ><img src= "img\<%= imgFiles[90]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[91].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="1" ><img src= "img\<%= imgFiles[91]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[92].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="2" ><img src= "img\<%= imgFiles[92]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[93].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="3" ><img src= "img\<%= imgFiles[93]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[94].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="4" ><img src= "img\<%= imgFiles[94]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[95].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="5" ><img src= "img\<%= imgFiles[95]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[96].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="6" ><img src= "img\<%= imgFiles[96]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[97].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="0" ><img src= "img\<%= imgFiles[97]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[98].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="1" ><img src= "img\<%= imgFiles[98]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[99].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="2" ><img src= "img\<%= imgFiles[99]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[100].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="3" ><img src= "img\<%= imgFiles[100]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[101].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="4" ><img src= "img\<%= imgFiles[101]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[102].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="5" ><img src= "img\<%= imgFiles[102]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[103].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="6" ><img src= "img\<%= imgFiles[103]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[104].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="6" ><img src= "img\<%= imgFiles[104]  %>" width="55"  height="55"> </a></div>


<div>
<a href="gstorepwd.jsp?x1=<%= imgFiles[105].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="0" ><img src= "img\<%= imgFiles[105]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[106].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="1" ><img src= "img\<%= imgFiles[106]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[107].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="2" ><img src= "img\<%= imgFiles[107]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[108].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="3" ><img src= "img\<%= imgFiles[108]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[109].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="4" ><img src= "img\<%= imgFiles[109]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[110].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="5" ><img src= "img\<%= imgFiles[110]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[111].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="6" ><img src= "img\<%= imgFiles[111]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[112].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="0" ><img src= "img\<%= imgFiles[112]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[113].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="1" ><img src= "img\<%= imgFiles[113]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[114].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="2" ><img src= "img\<%= imgFiles[114]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[115].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="3" ><img src= "img\<%= imgFiles[115]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[116].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="4" ><img src= "img\<%= imgFiles[116]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[117].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="5" ><img src= "img\<%= imgFiles[117]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[118].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="6" ><img src= "img\<%= imgFiles[118]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[119].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="6" ><img src= "img\<%= imgFiles[119]  %>" width="55"  height="55"> </a></div>


<div>
<a href="gstorepwd.jsp?x1=<%= imgFiles[120].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="0" ><img src= "img\<%= imgFiles[120]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[121].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="1" ><img src= "img\<%= imgFiles[121]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[122].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="2" ><img src= "img\<%= imgFiles[122]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[123].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="3" ><img src= "img\<%= imgFiles[123]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[124].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="4" ><img src= "img\<%= imgFiles[124]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[125].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="5" ><img src= "img\<%= imgFiles[125]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[126].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="6" ><img src= "img\<%= imgFiles[126]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[127].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="0" ><img src= "img\<%= imgFiles[127]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[128].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="1" ><img src= "img\<%= imgFiles[128]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[129].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="2" ><img src= "img\<%= imgFiles[129]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[130].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="3" ><img src= "img\<%= imgFiles[130]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[131].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="4" ><img src= "img\<%= imgFiles[131]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[132].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="5" ><img src= "img\<%= imgFiles[132]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[133].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="6" ><img src= "img\<%= imgFiles[133]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[134].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="6" ><img src= "img\<%= imgFiles[134]  %>" width="55"  height="55"> </a></div>


<div>
<a href="gstorepwd.jsp?x1=<%= imgFiles[135].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="0" ><img src= "img\<%= imgFiles[135]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[136].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="1" ><img src= "img\<%= imgFiles[136]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[137].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="2" ><img src= "img\<%= imgFiles[137]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[138].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="3" ><img src= "img\<%= imgFiles[138]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[139].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="4" ><img src= "img\<%= imgFiles[139]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[140].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="5" ><img src= "img\<%= imgFiles[140]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[141].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="6" ><img src= "img\<%= imgFiles[141]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[142].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="0" ><img src= "img\<%= imgFiles[142]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[143].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="1" ><img src= "img\<%= imgFiles[143]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[144].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="2" ><img src= "img\<%= imgFiles[144]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[145].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="3" ><img src= "img\<%= imgFiles[145]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[146].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="4" ><img src= "img\<%= imgFiles[146]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[147].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="5" ><img src= "img\<%= imgFiles[147]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[148].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="6" ><img src= "img\<%= imgFiles[148]  %>" width="55"  height="55"> </a>
<a href="gstorepwd.jsp?x1=<%= imgFiles[149].getName().replaceFirst("GImage","").replace(".png","")  %>+&uname=<%= request.getParameter("uname") %>" id="6" ><img src= "img\<%= imgFiles[149]  %>" width="55"  height="55"> </a></div>

</div>
<button type="submit" id="sub1">Submit</button>
</form>
<!-- <img src="finalTImg.png" width="350" height="350">   -->
</div>
</body>
</html>