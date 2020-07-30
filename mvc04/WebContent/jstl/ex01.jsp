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
	<h1>JSTL(변수의 선언과 출력)</h1>
	<p>jstl & standard .jar파일 라이브러리 추가</p>
	<p>taglib에 등록하셔야 쓸수 있음</p>
	<c:out value="출력"></c:out><br/>
	<c:set var="msg" scope="page" value="${null}"></c:set>
	${pageScope.msg }<br/>
	<c:out value="${msg}">대체할 문자열1</c:out><br/>
	<c:out value='<%=null %>'>대체할 문자열2</c:out><br/>
	<c:out value="출력4"/><br/>
	<c:out value='<%="출력5" %>'/><br/>
	
</body>
</html>









