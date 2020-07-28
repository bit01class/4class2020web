<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/frame.css"/>
<style type="text/css">
	#content>form{
		width: 500px;
		margin: 50px auto;
	}
	#content>form>div:last-child>button{
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
		$('#content>form>div:last-child>button').last().click(function(){
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
			<h2>수정페이지</h2>
			<form method="post">
				<div>
					<label for="sabun">사번</label>
					<input type="text" name="sabun" id="sabun" value="<jsp:getProperty property="sabun" name="dto"/>" readonly="readonly">
				</div>
				<div>
					<label for="name">이름</label>
					<input type="text" name="name" id="name" value="<jsp:getProperty property="name" name="dto"/>">
				</div>
				<div>
					<label for="sub">제목</label>
					<input type="text" name="sub" id="sub" value="<jsp:getProperty property="sub" name="dto"/>">
				</div>
				<div>
					<label for="pay">금액</label>
					<input type="text" name="pay" id="pay" value="<jsp:getProperty property="pay" name="dto"/>">
				</div>
				<div>
					<button type="submit">수정</button>
					<button type="reset">취소</button>
					<button type="button">뒤로</button>
				</div>
			</form>
		</div>
		<div id="footer">
			<address>비트캠프 서울시 서초구 강남대로 459 (서초동, 백암빌딩)</address>
			(주)비트컴퓨터 서초본원 <br/>
			Copyright (c) 비트캠프 All rights reserved.
		</div>
	</div>
</body>
</html>




