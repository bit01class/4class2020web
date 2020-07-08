<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table width="1024" align="center">
		<tr>
			<td><img src="img/logo.png"></td>
		</tr>
		<tr>
			<td align="center" bgcolor="#cccccc">
				<a href="?title=main">[HOME]</a>
				<a href="?title=intro">[INTRO]</a>
				<a href="">[E M P]</a>
				<a href="">[LOGIN]</a>
			</td>
		</tr>
		<tr>
			<td>
			<% 
			String title=request.getParameter("title");
			if(title==null)title="main";
			title+=".jsp"; 
			%>
				<center>
				<jsp:include page="<%=title %>"></jsp:include>
				</center>
			</td>
		</tr>
		<tr>
			<td align="center" bgcolor="#cccccc">
			비트캠프 서울시 서초구 강남대로 459<br>
			(주)비트컴퓨터 서초본원<br>
			Copyright (c) 비트캠프 All rights reserved.<br>
			</td>
		</tr>
	</table>
</body>
</html>