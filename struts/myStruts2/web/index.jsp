<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="s" uri="/struts-tags" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>fantom</title>
<script type="text/javascript">
var request;  
function sendInfo()  
{  
if(window.XMLHttpRequest){  
request=new XMLHttpRequest();  
}  
else if(window.ActiveXObject){  
request=new ActiveXObject("Microsoft.XMLHTTP");  
}  
request.onreadystatechange=getInfo;  
request.open("GET","gsk",true);  
request.send();  
}    
function getInfo(){  
if(request.readyState==4){  
var val=request.responseText;  
document.getElementById('sam').innerHTML=val;  
}  
}  
window.onLoad=sendInfo();
</script>
</head>
<body>
hesjjl
<div id="sam"></div>
</body>
</html>