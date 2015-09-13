<%@ page  language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %> 
<%@ taglib prefix="mine" uri="myTld" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int l[][]={{1,2,3},{4,5,6}};
request.setAttribute("cur","<h1>sai<h1>");
request.setAttribute("tip",l);
%>
<div>
<c:out value="${cur}" />

<c:forEach  var="sail" items="${tip}"> <c:forEach var="rat" items="${sail}" > ${rat} <BR></c:forEach></c:forEach>
</div>
</body>
</html>