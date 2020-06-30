<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>입력페이지</h1>
	<form action="insert.jsp">
		학번:<input type="text" name="num"><br>
		이름:<input type="text" name="name"><br>
		국어:<input type="text" name="kor"><br>
		영어:<input type="text" name="eng"><br>
		수학:<input type="text" name="math"><br>
		<input type="submit" value="입 력">
	</form>
</body>
</html>