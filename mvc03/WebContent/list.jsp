<%@ page import="java.util.ArrayList,com.bit.dept.model.Dept04Dto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="template/head.jspf" %>
<title>Insert title here</title>
<style type="text/css">
	#content{}
	#content>h2{
		text-align: center;
	}
	#content>table{
		width: 500px;
		margin: 10px auto;
	}
	#content>table, table tr>th,table tr>td{
		border-collapse: collapse;
		border:1px solid gray;
	}
	#content>h2+a{
		display: inline-block;
		width: 100px;
		height: 50px;
		text-align: center;
		line-height: 50px; 
		background-image: linear-gradient(darkgray,gray,darkgray);
		border-radius:15px;
		margin: 0px 650px;
		color: white;
		text-decoration: none;
		font-weight: bold;
	}
</style>
</head>
<body>
<%@ include file="template/header.jspf" %>
<%@ include file="template/menu.jspf" %>
	<h2>Dept List Page</h2>
	<a href="add.bit">입력</a>
	<table>
		<tr>
			<th>deptno</th>
			<th>dname</th>
			<th>loc</th>
		</tr>
	<c:forEach items="${list }" var="bean">
		<c:url value="detail.bit" var="detail">
			<c:param name="idx" value="${bean.deptno }"/>
		</c:url>
		<tr>
			<td><a href="${detail }">${bean.deptno }</a></td>
			<td><a href="${detail }">${bean.dname }</a></td>
			<td><a href="${detail }">${bean.loc }</a></td>
		</tr>
	</c:forEach>
	</table>
<%@ include file="template/footer.jspf" %>
</body>
</html>






