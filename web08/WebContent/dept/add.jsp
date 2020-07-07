<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String path="../";
%>
<jsp:include page="./../template/header.jsp">
	<jsp:param value="<%=path %>" name="path"/>
</jsp:include>
<jsp:include page="../template/menu.jsp">
	<jsp:param value="<%=path %>" name="path"/>
</jsp:include>
	<center>
	<h1>입력페이지</h1>
	<form action="insert.jsp">
		<table width="800">
			<tr>
				<td width="300" bgcolor="#cccccc" align="center">id</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td width="300" bgcolor="#cccccc" align="center">pw</td>
				<td><input type="password" name="pw"></td>
			</tr>
			<tr>
				<td width="300" bgcolor="#cccccc" align="center">name</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td colspan="2" width="300" bgcolor="#cccccc" align="center">
					<input type="submit" value="입 력">
					<input type="reset" value="취 소">
				</td>
			</tr>
		</table>
	</form>
	</center>
<jsp:include page="/template/footer.jsp"></jsp:include>
</body>
</html>






