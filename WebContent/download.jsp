<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.ep.Connectiondb"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/bootstrap.min.css" rel="stylesheet" >
<link href="css/style1.css" rel="stylesheet" >

<title>Captcha</title>
<meta name="description" content="Your description"/>
<meta name="keywords" content="keyword1 keyword2"/>

<style>
    table,tr,td{
        border-collapse: collapse;
        border-style: solid;
    }
    table{
        width: 750px;
    }
    td{
        text-align: center;
       
    }
    a{
        color: #666666;
    }
</style>
<script>
function down(){
	

	
}

</script>
</head>

<body background="WebpageImg\background.jpg" style="height:800px;">

<!-- wrapper starts -->
<div class="wrapper"> 
  
  <nav class="navbar navbar-inverse" role="navigation">
 <div class="container">
  <div class="navbar-header">
    <ul class="nav navbar-nav">
  <li role="presentation" class="active"><a href="upload.jsp?uname=<%= request.getParameter("uname")  %>">Upload</a></li>
  <li role="presentation"><a href="download.jsp?uname=<%= request.getParameter("uname")  %>">Download</a></li>
 <li role="presentation"><a href="logout.jsp">Logout</a></li>
 <p class="navbar-text" style="padding-left:680px;">Welcome <a href="#"><% out.println(request.getParameter("uname")); %></a></p>
</ul>
  </div>
  </div>
</nav>
  
  <!-- maincontent Starts -->
  <div class="container">
   
    
      
       
        </div>
    
     
      <div class="clear"></div>
      <div class="welcome" style="padding-top:100px;">
          <%
HttpSession user=request.getSession();  
String u=request.getParameter("uname").toString();  
int id=0;
Connection con=Connectiondb.getCon();
Statement st=con.createStatement();
ResultSet rt=st.executeQuery("select * from file where owner='"+u+ "'");

%>
<div style="padding-left:100px;">
<div class="panel panel-default" style="width:1100px;">
  <!-- Default panel contents -->
  <div class="panel-heading" >Files available for Download</div>
<form action="#"  method="post" >
 <table class="table" >
              <tr style="background-color: #007F00;font-size: 15px;color:white;">
        <td>FILENAME</td><td>OWNER</td><td>DOWNLOAD</td>
    </tr>
    <%
    
while(rt.next()){
    
++id;
%>
    
    <TR>
        <td><input style="text-align:center;" type="text" id="fname" name="filename"  value="<%=rt.getString("filename")%>" readonly></input></td><td><input type="text" style="text-align:center;"  name="owner"   value="<%=rt.getString("owner")%>" readonly></input></td>
        <td><a href="down.jsp?filename=<%=rt.getString("filename")%>&uname=<%=rt.getString("owner")%>" >Download</a>  </td>   
        
    </TR>
<%
}
%>
</table>
 </form>         
      
</div>
</div>
<!-- wrapper ends -->

</body>
</html>
