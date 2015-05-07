<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.ep.Connectiondb"%>
<%@page import="java.sql.Connection"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css/bootstrap.min.css" rel="stylesheet" >
<link href="css/style1.css" rel="stylesheet" >
<script>
function moveback(){
	location.href="http://localhost:8080/Captcha/index.html";
	
}

</script>
</head>
<body background="WebpageImg\background.jpg" style="height:800px;">
<%  
try{
HttpSession user=request.getSession();
application.setAttribute("uname",request.getParameter("uname"));
String uname= request.getParameter("uname");
System.out.println(uname);
System.out.println("insert into ur (user,email,contact,loc,ptype,cpwd,noofimageclicked,seq) values('"+ uname +"','" + request.getParameter("uemail").toString() + "'," + Integer.parseInt(request.getParameter("uphone").toString()) + ",'" + request.getParameter("ulocate").toString()+ "'," + 1 + "," + null + "," +  0 + "," + null   +  ")");
String pwdtype= request.getParameter("pwd");
System.out.println("pwdtype :"+pwdtype);
int type=-1;
if(pwdtype.equals("tpwd"))
	type  = 1;
if(pwdtype.equals("tcap"))
	type = 2;
if(pwdtype.equals("gcap"))
	type = 3;

System.out.println("type :"+ type);
Connection con= Connectiondb.getCon();
Statement st=con.createStatement();
ResultSet rt=st.executeQuery("select * from userregistration where user='"+uname+"'"); 

if(rt.next()){
	out.write("<div style=\" font-size:36px; padding-left:460px;padding-top:350px; \"><span class=\"label label-warning\">User Name Already Exist</span></div>");
	out.write("<div style=\"padding-left:560px;padding-top:30px;\"><button type=\"submit\" onclick=\"moveback();\" style=\"height:35px;padding-top:5px; border-color:#000000; border-width:thin;\" class=\"btn btn-default btn-lg\"> <span  aria-hidden=\"true\"></span> Go Back	</button></div>");

	
	  

}
else
	{
	//System.out.println(rt);
	
 //    System.out.println("insert into ur (user,email,contact,loc,ptype,cpwd,noofimageclicked,seq) values('"+ uname +"','" + request.getParameter("uemail").toString() + "'," + Integer.parseInt(request.getParameter("uphone").toString()) + ",'" + request.getParameter("ulocate").toString()+ "'," + type + "," + null + "," +  0 + "," + null   +  ")");	
	int x= st.executeUpdate("insert into ur values('"+ uname +"','" + request.getParameter("uemail").toString() + "'," + Integer.parseInt(request.getParameter("uphone").toString()) + ",'" + request.getParameter("ulocate").toString()+"',"+type+",null,0,null)");
	System.out.println("Record inserted successfully");
	
	if(type == 1)
		response.sendRedirect("getpwd.jsp?uname="+request.getParameter("uname"));
	if(type== 2)
	response.sendRedirect("getgcap.jsp?uname="+ request.getParameter("uname"));
	if(type == 3)
		response.sendRedirect("getgphcap.jsp?uname="+ request.getParameter("uname"));
	}
}catch(Exception e){
 e.getMessage();
}
   
%>

</body>
</html>