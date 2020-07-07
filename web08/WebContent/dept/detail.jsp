<%@page import="com.bit.dept.DeptCRUD"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/template/header.jsp">
	<jsp:param value="../" name="path"/>
</jsp:include>
<jsp:include page="/template/menu.jsp">
	<jsp:param value="../" name="path"/>
</jsp:include>
	<jsp:useBean id="bean" class="com.bit.dept.DeptDto"></jsp:useBean>
	<jsp:setProperty property="*" name="bean"/>
	<%
	DeptCRUD crud=new DeptCRUD();
	crud.detail(bean);
	%>
	<h1><jsp:getProperty property="num" name="bean"/>번의 상세페이지</h1>
	<table>
		<tr>
			<td>id</td>
			<td><jsp:getProperty property="id" name="bean"/></td>
		</tr>
		<tr>
			<td>pw</td>
			<td><jsp:getProperty property="pw" name="bean"/></td>
		</tr>
		<tr>
			<td>name</td>
			<td><jsp:getProperty property="name" name="bean"/></td>
		</tr>
		<tr>
			<td>level</td>
			<td><jsp:getProperty property="lev" name="bean"/></td>
		</tr>
		<tr>
			<td colspan="2">
				<a href="edit.jsp">[수 정]</a>
				<a href="delete.jsp">[삭 제]</a>
			</td>
		</tr>
		
	</table>
<jsp:include page="/template/footer.jsp"></jsp:include>
</body>
</html>