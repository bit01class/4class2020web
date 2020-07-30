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
	<h1>pasing</h1>
	<c:set value="ABCD" var="id" scope="request"></c:set>
	<c:import url="ex06.jsp?id=abcd"></c:import>
</body>
</html>