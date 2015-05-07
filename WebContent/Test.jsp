<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script language="JavaScript">
function point_it(event){
	pos_x = event.offsetX?(event.offsetX):event.pageX-document.getElementById("pointer_div").offsetLeft;
	pos_y = event.offsetY?(event.offsetY):event.pageY-document.getElementById("pointer_div").offsetTop;
	document.getElementById("cross").style.left = (pos_x-1) ;
	document.getElementById("cross").style.top = (pos_y-15) ;
	document.getElementById("cross").style.visibility = "visible" ;
	
	var outString = "basic.jsp?x1=" + pos_x
    outString += "&y1=" + pos_y
    
    location.href = outString
	
	
//	document.pointform.form_x.value = pos_x;
//	document.pointform.form_y.value = pos_y;
}
</script>
</head>
<body>

<div id="pointer_div" onclick="point_it(event)" style = "background-image:url('finalTImg.png');width:500px;height:333px;">
<img src="point.gif" id="cross" style="position:relative;visibility:hidden;z-index:2;"></div>
You pointed on x = <input type="text" name="form_x" size="4" /> - y = <input type="text" name="form_y" size="4" />
</body>
</html>