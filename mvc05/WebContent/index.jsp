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
		width: 800px;
		margin: 0px auto;
	}
	dl>dt,dl>dd,dl>dd>div{
		display: inline-block;
	}
	dl>dt{
		width: 100px;
	}
	dl>dd{
		width: 600px;
	}
	dl>dd>div{
		width: 290px;
	}
</style>
<link rel="stylesheet" type="text/css" href="css/header.css"/>
</head>
<body>
<%@ include file="template/header.jspf" %>
	<h1>리스트페이지</h1>
	<dl>
		<dt>deptno</dt>
		<dd>
			<div>dname</div>
			<div>loc</div>
		</dd>
		<c:forEach items="${list }" var="bean">
		<dt><a href="detail.bit?idx=${bean.deptno}">${bean.deptno}</a></dt>
		<dd>
			<div>${bean.dname }</div>
			<div>${bean.loc }</div>
		</dd>
		</c:forEach>
	</dl>
	<a href="add.bit">입력</a>
</body>
</html>