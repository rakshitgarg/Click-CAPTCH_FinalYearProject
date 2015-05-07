<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.*"%>
<%@page import="com.ep.Connectiondb"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.rowset.serial.SerialBlob" %>
<%@page import="java.awt.image.BufferedImage" %>
<%@page import="java.io.*" %>
<%@page import="java.awt.image.WritableRaster" %>
<%@page import="java.awt.image.DataBufferByte" %>
<%@page import="javax.imageio.ImageIO" %>
<%@page import="java.io.IOException" %>
 
<%@page import="com.ep.Render" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

try{
	final Render r= new Render();
	
	 r.setAlpha(50/100f);
	
	 javax.swing.JFrame f = new javax.swing.JFrame("CompositeTest");
        f.setDefaultCloseOperation(javax.swing.JFrame.EXIT_ON_CLOSE);
        java.awt.Container cp = f.getContentPane();
        cp.add(r);
        f.pack();
        f.setLocationRelativeTo(null);
        f.setVisible(true);
        f.dispose();
   
        r.coLarge();
	
	}catch(java.io.IOException e)
	{
		e.printStackTrace();
	}

File imgPath=null;
FileInputStream fin= null;
try{
	 // open image
	  imgPath = new File("C:/Eclipse Workspace/Java/IEEE2014/Captcha/WebContent/img/finalImg.png");

	 //BufferedImage bufferedImage = ImageIO.read(imgPath);
     //System.out.println("File Name :"+ imgPath.getName());
     //System.out.println("File Size :"+ imgPath.length());
	 
	 // get DataBufferBytes from Raster
	 //WritableRaster raster = bufferedImage .getRaster();
	 //DataBufferByte data   = (DataBufferByte) raster.getDataBuffer();
	fin = new FileInputStream(imgPath);
	
	//byte[] buffer= data.getData();
	//blob = new SerialBlob(buffer);
	 
	 
	}catch(IOException e){
		e.printStackTrace();
	}





String username = request.getParameter("uname");
application.setAttribute("uname",request.getParameter("uname"));
Connection con= Connectiondb.getCon();
PreparedStatement ps=null;
String sql = "insert into storeimg (name,image,len) values(?,?,?)";
ps= con.prepareStatement(sql);
ps.setString(1,imgPath.getName());
ps.setBinaryStream(2,(InputStream)fin );
ps.setInt(3,(int)imgPath.length());
int d= ps.executeUpdate();
if(d != 0)
	System.out.println("File stored successfully");

Statement st=con.createStatement();
ResultSet rt=st.executeQuery("select * from userregistration where user='"+username+"'"); 
if(rt.next()){
if(rt.getInt(5) == 1)	
  response.sendRedirect("loginconfirm.jsp?uname="+username);
if(rt.getInt(5) == 2)
  response.sendRedirect("loginconfirm1.jsp?uname="+username);	
if(rt.getInt(5) == 3)	
  response.sendRedirect("loginconfirm2.jsp?uname="+username);
}
else
out.write("Username does not exist");
%>
</body>
</html>