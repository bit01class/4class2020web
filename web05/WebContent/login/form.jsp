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
	<center>
	<h1>�α���</h1>
	<form action="result.jsp" method="post">
		<table>
			<%
			System.out.println(session.getId());
			System.out.println(session.getMaxInactiveInterval());
			System.out.println(session.getAttribute("name"));
			String param=request.getParameter("err");
			if(param!=null){
			%>
			<tr>
				<td colspan="2" bgcolor="red">id,pw�� Ȯ���ϼ���</td>
			</tr>
			<%} %>
			<tr>
				<td>id</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>pw</td>
				<td><input type="password" name="pw"></td>
			</tr>
			<tr>
				<td colspan="2" align="center" bgcolor="#cccccc">
					<input type="submit" value="�α���">
					<input type="reset" value="�� ��">
					<input type="button" value="ȸ������">
				</td>
			</tr>
		</table>
	</form>
	</center>
<%@ include file="../template/footer.jspf" %>
</body>
</html>








