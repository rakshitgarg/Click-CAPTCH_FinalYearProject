<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="com.ep.Connectiondb"%>
 
 <%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	 
<%@ page import="java.sql.*"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>
<%@page import=" java.security.SecureRandom"%>
<%@page import="java.util.Random"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
 
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>

<br>
<br>

<%
String sql1="select * from userregistration where user='" + request.getParameter("uname") + "'";
PreparedStatement ps1= null;
Connection con= Connectiondb.getCon();
String reid=null;
ResultSet rs=null;
ps1= con.prepareStatement(sql1);
rs= ps1.executeQuery();
while(rs.next()){
	reid= rs.getString(2);
}
String name= request.getParameter("uname");
String host="", user="", pass="";

host ="smtp.gmail.com"; //"smtp.gmail.com";
user ="ram.emporis@gmail.com"; //"YourEmailId@gmail.com" // email id to send the emails
pass ="emporissofttech"; //Your gmail password

String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
String to = "reid"; //  email id of recipient

String from ="ram.emporis@gmail.com"; //Email id of the sender 
String subject ="Password Reset";
String link = "<a href=http://localhost:8080/Captcha/verifyuser.jsp?uname=" + name + " >Reset Password</a> ";
String messageText = "Please click the below link to reset your password  : " + link;


boolean sessionDebug = true;

Properties props = System.getProperties();
props.put("mail.host", host);
props.put("mail.transport.protocol.", "smtp");
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.", "true");
props.put("mail.smtp.port", "465");
props.put("mail.smtp.socketFactory.fallback", "false");
props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
Session mailSession = Session.getDefaultInstance(props, null);
mailSession.setDebug(sessionDebug);
Message msg = new MimeMessage(mailSession);
msg.setFrom(new InternetAddress(from));
InternetAddress[] address = {new InternetAddress(to)};
msg.setRecipients(Message.RecipientType.TO, address);
msg.setSubject(subject);
msg.setContent(messageText, "text/html"); // use setText if you want to send text
Transport transport = mailSession.getTransport("smtp");
transport.connect(host, user, pass);
try {
transport.sendMessage(msg, msg.getAllRecipients());
response.sendRedirect("index.html?message=success"); // assume it was sent
}
catch (Exception err) {
out.println("message not successfully sended"); // assume it?s a fail
}
transport.close();
%>
</body>
</html>