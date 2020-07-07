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
	<jsp:useBean id="login" class="com.bit.dept.DeptDto" scope="session"></jsp:useBean>
	<jsp:setProperty property="*" name="login"/>
	<%
		DeptCRUD crud=new DeptCRUD();
		crud.login(login);
		String path="form.jsp";
		if(login.isResult()) path="../dept/list.jsp";
	%>
	<jsp:forward page="<%=path %>"></jsp:forward>
</body>
</html>












