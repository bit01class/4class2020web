<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../template/header.jspf" %>
<%@ include file="../template/menu.jspf" %>
	<h1>�Է�������</h1>
<%
	String name=request.getParameter("name");
	if(name==null)name="";
%>
	<form action="insert.jsp">
		<table align="center">
			<tr>
				<td>�̸�</td>
				<td><input type="text" name="name" value="<%=name%>"></td>
			</tr>
			<tr>
				<td>�ݾ�</td>
				<td><input type="text" name="pay"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="�� ��">
					<input type="reset" value="�� ��">
				</td>
			</tr>
		</table>
	</form>
<%@ include file="../template/footer.jspf" %>
</body>
</html>