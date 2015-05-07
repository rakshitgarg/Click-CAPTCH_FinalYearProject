<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css/bootstrap.min.css" rel="stylesheet" >
<link href="css/style1.css" rel="stylesheet" >

</head>
<body background="WebpageImg\background.jpg" style="height:800px;">

<div class="container" style="padding-top:150px;padding-left:400px;color:white;">
      <div style="background-color:#007F00; box-shadow: 10px 10px 5px #0D016D;border-radius:6px;width:400px;height:300px;">
				            
               <h3 style="padding-left:100px;padding-bottom:15px;padding-top:20px;">Set Your password </h3>
            <form method="post" action="pwduser.jsp?uname=<%= request.getParameter("uname")%>" >
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <b>Password:</b>     
              <div class="input-group" style="padding-left:50px;"> <input name="upwd1" type="password" class="form-control" placeholder="Password"  style="border-radius:6px; width:300px; font-style:italic;" aria-describedby="basic-addon2"></div><br>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <b>Confirm Password:</b>    
               <div class="input-group" style="padding-left:50px;"> <input name="upwd2" type="password" class="form-control" placeholder="Password"  style="border-radius:6px; width:300px; font-style:italic;" aria-describedby="basic-addon2"></div><br><br>            
              &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               
               
               <button type="submit" style="height:35px;padding-top:5px; border-color:#000000; border-width:thin;" class="btn btn-default btn-lg">
  <span  aria-hidden="true"></span> Login
</button>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<button type="submit" style="height:35px;padding-top:5px; border-color:#000000; border-width:thin;" class="btn btn-default btn-lg">
  <span  aria-hidden="true"></span> Reset
</button>
            </form>
            
       
        </div>
</div>
</body>
</html>