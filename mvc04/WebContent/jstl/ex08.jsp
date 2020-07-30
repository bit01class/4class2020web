<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>JSTL etc..</h1>
	<c:url value="ex01.jsp" var="ex01" />
	<c:url value="ex06.jsp" var="ex06">
		<c:param name="id" value="4321"/>
	</c:url>
	<ul>
		<li><a href="ex01.jsp">ex01</a></li>
		<li><a href='<c:url value="ex01.jsp" />'>ex01</a></li>
		<li><a href="${ex01 }">ex01</a></li>
		<li><a href="ex06.jsp?id=1234">ex06</a></li>
		<li><a href="${ex06 }">ex06</a></li>
	</ul>
</body>
</html>






