<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	dl{
		border:1px solid gray;
		margin: 0px;
		padding: 0px;
	}
	dl>dt{
		width: 100px;
		display: inline-block;
		float: left;
	}
	dl>dd{
		width: 300px;
		display: inline-block;
	}
	dl>dd>div{
		width: 140px;
		display: inline-block;
	}
</style>
</head>
<body>
	<h1>리스트페이지</h1>
	<dl>
		<dt>deptno</dt>
		<dd>
			<div>dname</div>
			<div>loc</div>
		</dd>
	</dl>
	<c:forEach items="${list }" var="bean">
	<dl>
		<dt>${bean.deptno}</dt>
		<dd>
			<div>${bean.dname }</div>
			<div>${bean.loc }</div>
		</dd>
	</dl>
	</c:forEach>
</body>
</html>