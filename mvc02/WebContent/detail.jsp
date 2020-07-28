<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/frame.css"/>
<style type="text/css">
	#content>table~a{
		display: inline-block;
		width: 150px;
		height: 50px;
		background-image:linear-gradient(darkgray,gray,darkgray);
		border-radius:25px;
		margin: 0px auto 50px auto;
		text-decoration: none;
		text-align: center;
		line-height: 50px;
		color:white;
	}
</style>
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('table~a').last().click(function(){
			history.back();
			return false;
		});
	});
</script>
</head>
<body>
	<div>
		<div id="header">
			<h1>비트교육센터</h1>
		</div>
		<div id="menu">
			<ul>
				<li><a href="index.bit">HOME</a></li>
				<li><a href="list.bit">E M P</a></li>
				<li><a href="#">DEPT</a></li>
				<li><a href="login.bit">LOGIN</a></li>
			</ul>
		</div>
		<div id="content">
<jsp:useBean id="dto" class="com.bit.model.Emp03Dto" scope="request"></jsp:useBean>
			<h2>상세페이지</h2>
			<table>
				<tr>
					<th>사번</th>
					<td><jsp:getProperty property="sabun" name="dto"/> </td>
				</tr>
				<tr>
					<th>이름</th>
					<td><jsp:getProperty property="name" name="dto"/> </td>
				</tr>
				<tr>
					<th>제목</th>
					<td><jsp:getProperty property="sub" name="dto"/> </td>
				</tr>
				<tr>
					<th>금액</th>
					<td><jsp:getProperty property="pay" name="dto"/> </td>
				</tr>
			</table>
			<a href="edit.bit?idx=<%=dto.getSabun()%>">수정</a>
			<a href="delete.bit?idx=<%=dto.getSabun()%>">삭제</a>
			<a href="#">뒤로</a>
		</div>
		<div id="footer">
			<address>비트캠프 서울시 서초구 강남대로 459 (서초동, 백암빌딩)</address>
			(주)비트컴퓨터 서초본원 <br/>
			Copyright (c) 비트캠프 All rights reserved.
		</div>
	</div>
</body>
</html>




