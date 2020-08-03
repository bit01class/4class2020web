<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/header.css"/>
</head>
<body>
	<%@ include file="template/header.jspf" %>
	<h1>login page</h1>
	<form method="post">
		<div>
			<label for="sabun">sabun</label>
			<input type="text" name="sabun" id="sabun"/>
		</div>
		<div>
			<label for="name">name</label>
			<input type="text" name="name" id="name"/>
		</div>
		<div>
			<input type="submit" value="로그인"/>
			<input type="reset" value="취 소"/>
		</div>
	</form>
</body>
</html>