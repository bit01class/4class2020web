<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>값 전달</h1>
	<form action="ex08.jsp" method="get">
		id<input type="text" name="id"><br>
		pw<input type="password" name="pw"><br>
		hobby
		<input type="checkbox" name="ra" value="item1">item1
		<input type="checkbox" name="ra" value="item2">item2
		<input type="checkbox" name="ra" value="item3">item3
		<br>
		<input type="submit">
	</form>
</body>
</html>