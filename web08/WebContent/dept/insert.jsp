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
	<jsp:useBean id="bean" class="com.bit.dept.DeptDto"></jsp:useBean>
	<jsp:setProperty property="*" name="bean"/>
	
	<%
		DeptCRUD crud=new DeptCRUD();
		crud.insert(bean);
		response.sendRedirect("list.jsp");
	%>
	
</body>
</html>












