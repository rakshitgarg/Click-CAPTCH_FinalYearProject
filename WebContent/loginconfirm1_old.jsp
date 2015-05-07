<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.ep.*"%>
    <%@page import="java.util.*" %>
    <%@page import= "java.io.File" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Graphical Password</title>
<script>

</script>
</head>
<body align="center">
<h3> Select your Password</h3>
<%     
String[][] timg= {{"Timage000.png","Timage001.png","Timage002.png"},
				 {"Timage010.png","Timage011.png","Timage012.png"},
				 {"Timage020.png","Timage021.png","Timage022.png"},
				 {"Timage030.png","Timage031.png","Timage032.png"},
				 {"Timage040.png","Timage041.png","Timage042.png"},
				 {"Timage050.png","Timage051.png","Timage052.png"},				 
				 {"Timage060.png","Timage061.png","Timage062.png"},
				 {"Timage070.png","Timage071.png","Timage072.png"},
				 {"Timage080.png","Timage081.png","Timage082.png"},
				 {"Timage090.png","Timage091.png","Timage092.png"},
				 {"Timage100.png","Timage101.png","Timage102.png"},
				 {"Timage110.png","Timage111.png","Timage112.png"},				 
				 {"Timage120.png","Timage121.png","Timage122.png"},
				 {"Timage130.png","Timage131.png","Timage132.png"},
				 {"Timage140.png","Timage141.png","Timage142.png"},
				 {"Timage150.png","Timage151.png","Timage152.png"},
				 {"Timage160.png","Timage161.png","Timage162.png"},				 
				 {"Timage170.png","Timage171.png","Timage172.png"},
				 {"Timage180.png","Timage181.png","Timage182.png"},
				 {"Timage190.png","Timage191.png","Timage192.png"},
				 {"Timage200.png","Timage201.png","Timage202.png"},
				 {"Timage210.png","Timage211.png","Timage212.png"},
				 {"Timage220.png","Timage221.png","Timage222.png"},
				 {"Timage230.png","Timage231.png","Timage232.png"},				 
				 {"Timage240.png","Timage241.png","Timage242.png"},
				 {"Timage250.png","Timage251.png","Timage252.png"},
				 {"Timage260.png","Timage261.png","Timage262.png"},
				 {"Timage270.png","Timage271.png","Timage272.png"},
				 {"Timage280.png","Timage281.png","Timage282.png"},				 
				 {"Timage290.png","Timage291.png","Timage292.png"},
				 {"Timage300.png","Timage301.png","Timage302.png"},				 
				 {"Timage310.png","Timage311.png","Timage312.png"},
				 {"Timage320.png","Timage321.png","Timage322.png"},
				 {"Timage330.png","Timage331.png","Timage332.png"},
				 {"Timage340.png","Timage341.png","Timage342.png"},
				 {"Timage350.png","Timage351.png","Timage352.png"},
				 {"Timage360.png","Timage361.png","Timage362.png"},
				 {"Timage370.png","Timage371.png","Timage372.png"},
				 {"Timage380.png","Timage381.png","Timage382.png"},				 
				 {"Timage390.png","Timage391.png","Timage392.png"},				
				 {"Timage400.png","Timage401.png","Timage402.png"},
				 {"Timage410.png","Timage411.png","Timage412.png"},				 
				 {"Timage420.png","Timage421.png","Timage422.png"},
				 {"Timage430.png","Timage431.png","Timage432.png"}, 
				 {"Timage440.png","Timage441.png","Timage442.png"},
				 {"Timage450.png","Timage451.png","Timage452.png"},
				 {"Timage460.png","Timage461.png","Timage462.png"},
				 {"Timage470.png","Timage471.png","Timage472.png"},
				 {"Timage480.png","Timage481.png","Timage482.png"}  };
				

int max=2;
int min=0;
int maximum=48;
int i=0;
Random rn = new Random();		
int j=0;
ArrayList<Integer> list = new ArrayList<Integer>();
for (int ii=0; ii<49;ii++) {
    list.add(new Integer(ii));
}
Collections.shuffle(list);   // shuffle the list to create non-sorted list 
ListIterator lit= list.listIterator();
int[] a= new int[49];
int k=0;
while(lit.hasNext())
{
a[k]= Integer.parseInt(lit.next().toString());
k++;	
}	
int c=0;
String[] display= new String[49];
for(int q=0; q <49; q++)
display[q]=  timg[a[c++]][rn.nextInt(max - min + 1) + min];

%>
<div style="padding-top:110px;padding-left:450px;">

<form action="logincTpwd1.jsp?uname=<%= application.getAttribute("uname") %>" method="post">
<div  style="border-style:solid; border-color:black; width:412px;">
<div>
<a href="loginstorepwd1.jsp?x1=<%= display[0].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="0" ><img src= "img\<%= display[0] %>" width="55"  height="55"> </a>
<a href="loginstorepwd1.jsp?x1=<%= display[1].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="1" ><img src= "img\<%= display[1] %>" width="55"  height="55"> </a>
<a href="loginstorepwd1.jsp?x1=<%= display[2].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="2" ><img src= "img\<%= display[2] %>" width="55"  height="55"> </a>
<a href="loginstorepwd1.jsp?x1=<%= display[3].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="3" ><img src= "img\<%= display[3] %>" width="55"  height="55"> </a>
<a href="loginstorepwd1.jsp?x1=<%= display[4].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="4" ><img src= "img\<%= display[4] %>" width="55"  height="55"> </a>
<a href="loginstorepwd1.jsp?x1=<%= display[5].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="5" ><img src= "img\<%= display[5] %>" width="55"  height="55"> </a>
<a href="loginstorepwd1.jsp?x1=<%= display[6].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="6" ><img src= "img\<%= display[6] %>" width="55"  height="55"> </a></div>
<div> 
<a href="loginstorepwd1.jsp?x1=<%= display[7].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="7" ><img src= "img\<%= display[7] %>" width="55"  height="55"> </a>
<a href="loginstorepwd1.jsp?x1=<%= display[8].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="8" ><img src= "img\<%= display[8] %>" width="55"  height="55"> </a>
<a href="loginstorepwd1.jsp?x1=<%= display[9].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="9" ><img src= "img\<%= display[9] %>" width="55"  height="55"> </a>
<a href="loginstorepwd1.jsp?x1=<%= display[10].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="10" ><img src= "img\<%= display[10] %>" width="55"  height="55"> </a>
<a href="loginstorepwd1.jsp?x1=<%= display[11].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="11" ><img src= "img\<%= display[11] %>" width="55"  height="55"> </a>
<a href="loginstorepwd1.jsp?x1=<%= display[12].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="12" ><img src= "img\<%= display[12] %>" width="55"  height="55"> </a>
<a href="loginstorepwd1.jsp?x1=<%= display[13].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="13" ><img src= "img\<%= display[13] %>" width="55"  height="55"> </a>
</div>
<div>
<a href="loginstorepwd1.jsp?x1=<%= display[14].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="14" ><img src= "img\<%= display[14] %>" width="55"  height="55"> </a>
<a href="loginstorepwd1.jsp?x1=<%= display[15].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="15" ><img src= "img\<%= display[15] %>" width="55"  height="55"> </a>
<a href="loginstorepwd1.jsp?x1=<%= display[16].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="16" ><img src= "img\<%= display[16] %>" width="55"  height="55"> </a>
<a href="loginstorepwd1.jsp?x1=<%= display[17].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="17" ><img src= "img\<%= display[17] %>" width="55"  height="55"> </a>
<a href="loginstorepwd1.jsp?x1=<%= display[18].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="18" ><img src= "img\<%= display[18] %>" width="55"  height="55"> </a>
<a href="loginstorepwd1.jsp?x1=<%= display[19].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="19" ><img src= "img\<%= display[19] %>" width="55"  height="55"> </a>
<a href="loginstorepwd1.jsp?x1=<%= display[20].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="20" ><img src= "img\<%= display[20] %>" width="55"  height="55"> </a>
</div>
<div>
<a href="loginstorepwd1.jsp?x1=<%= display[21].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="21" ><img src= "img\<%= display[21] %>" width="55"  height="55"> </a>
<a href="loginstorepwd1.jsp?x1=<%= display[22].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="22" ><img src= "img\<%= display[22] %>" width="55"  height="55"> </a>
<a href="loginstorepwd1.jsp?x1=<%= display[23].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="23" ><img src= "img\<%= display[23] %>" width="55"  height="55"> </a>
<a href="loginstorepwd1.jsp?x1=<%= display[24].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="24" ><img src= "img\<%= display[24] %>" width="55"  height="55"> </a>
<a href="loginstorepwd1.jsp?x1=<%= display[25].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="25" ><img src= "img\<%= display[25] %>" width="55"  height="55"> </a>
<a href="loginstorepwd1.jsp?x1=<%= display[26].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="26" ><img src= "img\<%= display[26] %>" width="55"  height="55"> </a>
<a href="loginstorepwd1.jsp?x1=<%= display[27].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="27" ><img src= "img\<%= display[27] %>" width="55"  height="55"> </a>
</div>
<div>
<a href="loginstorepwd1.jsp?x1=<%= display[28].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="28" ><img src= "img\<%= display[28] %>" width="55"  height="55"> </a>
<a href="loginstorepwd1.jsp?x1=<%= display[29].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="29" ><img src= "img\<%= display[29] %>" width="55"  height="55"> </a>
<a href="loginstorepwd1.jsp?x1=<%= display[30].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="30" ><img src= "img\<%= display[30] %>" width="55"  height="55"> </a>
<a href="loginstorepwd1.jsp?x1=<%= display[31].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="31" ><img src= "img\<%= display[31] %>" width="55"  height="55"> </a>
<a href="loginstorepwd1.jsp?x1=<%= display[32].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="32" ><img src= "img\<%= display[32] %>" width="55"  height="55"> </a>
<a href="loginstorepwd1.jsp?x1=<%= display[33].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="33" ><img src= "img\<%= display[33] %>" width="55"  height="55"> </a>
<a href="loginstorepwd1.jsp?x1=<%= display[34].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="34" ><img src= "img\<%= display[34] %>" width="55"  height="55"> </a>
</div>
<div>
<a href="loginstorepwd1.jsp?x1=<%= display[35].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="35" ><img src= "img\<%= display[35] %>" width="55"  height="55"> </a>
<a href="loginstorepwd1.jsp?x1=<%= display[36].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="36" ><img src= "img\<%= display[36] %>" width="55"  height="55"> </a>
<a href="loginstorepwd1.jsp?x1=<%= display[37].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="37" ><img src= "img\<%= display[37] %>" width="55"  height="55"> </a>
<a href="loginstorepwd1.jsp?x1=<%= display[38].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="38" ><img src= "img\<%= display[38] %>" width="55"  height="55"> </a>
<a href="loginstorepwd1.jsp?x1=<%= display[39].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="39" ><img src= "img\<%= display[39] %>" width="55"  height="55"> </a>
<a href="loginstorepwd1.jsp?x1=<%= display[40].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="40" ><img src= "img\<%= display[40] %>" width="55"  height="55"> </a>
<a href="loginstorepwd1.jsp?x1=<%= display[41].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="41" ><img src= "img\<%= display[41] %>" width="55"  height="55"> </a>
</div>
<div>
<a href="loginstorepwd1.jsp?x1=<%= display[42].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="42" ><img src= "img\<%= display[42] %>" width="55"  height="55"> </a>
<a href="loginstorepwd1.jsp?x1=<%= display[43].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="43" ><img src= "img\<%= display[43] %>" width="55"  height="55"> </a>
<a href="loginstorepwd1.jsp?x1=<%= display[44].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="44" ><img src= "img\<%= display[44] %>" width="55"  height="55"> </a>
<a href="loginstorepwd1.jsp?x1=<%= display[45].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="45" ><img src= "img\<%= display[45] %>" width="55"  height="55"> </a>
<a href="loginstorepwd1.jsp?x1=<%= display[46].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="46" ><img src= "img\<%= display[46]%>" width="55"  height="55"> </a>
<a href="loginstorepwd1.jsp?x1=<%= display[47].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="47" ><img src= "img\<%= display[47] %>" width="55"  height="55"> </a>
<a href="loginstorepwd1.jsp?x1=<%= display[48].replaceFirst("Timage","").replace(".png","")  %>+&uname=<%= application.getAttribute("uname") %>" id="48" ><img src= "img\<%= display[48] %>" width="55"  height="55"> </a>
</div>
</div>
<button type="submit" id="sub1" >Submit</button>
</form>
<!-- <img src="finalTImg.png" width="350" height="350">   -->
</div>

</body>
</html>