<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>JSTL formatting</h1>
	<c:set value="100000" var="su"></c:set>
	<p>${su }</p>
	<p><fmt:formatNumber value="${su }" pattern="###,###"></fmt:formatNumber></p>
	<p><fmt:formatNumber value="${su }" pattern="$###,###"></fmt:formatNumber></p>
	<c:set value="<%=new java.util.Date() %>" var="nalja"></c:set>
	<p>${nalja }</p>
	<p><fmt:formatDate value="${nalja }" pattern="YYYY-MM-dd HH:mm:ss"/> </p>
</body>
</html>





