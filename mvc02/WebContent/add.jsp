<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/frame.css"/>
<style type="text/css">
	#content>h2{
		text-align: center;
	}
	#content>form{
		width: 500px;
		margin: 50px auto;
	}
	#content>form>div{
		margin-top: 10px;
		text-align: center;
	}
	#content>form>div>label{
		width: 100px;
		display: inline-block;
		border-bottom: 1px solid gray;
	}
	#content>form span{
		display: none;
	}
	#err{
		background-color: red;
		height: 50px;
	}
	#err>span:first-child{
		background-color: red;
		float: right;
		border: 1px solid white;
		margin: 5px;
		width: 20px;
		height: 20px;
		color: white;
		text-align: center;
		line-height: 20px;
		cursor: pointer;
	}
	#err>span:last-child{
		background-color: red;
		clear: both;
	}
</style>
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	if(<%=request.getAttribute("err") %>){
		$('#err').show();
	}else{
		$('#err').hide();
	}
	$('#err>span').eq(0).click(function(){
		$('#err').hide();
	});
	$('#content form button').eq(2).click(function(){
		window.history.back();
	});
	$('#content form').submit(function(e){
		$('#err').hide();
		if($('#sabun').val()==''){
			$('#err').show();
			$('#err>span').last().text('사번을 입력하세요');
			$('#sabun').focus();
			return false;
		}else if($('#name').val()==''){
			$('#err').show();
			$('#err>span').last().text('이름을 입력하세요');
			$('#sabun').focus();
			return false;
		}else if($('#sub').val()==''){
			$('#sub').val('제목없음');
		}else if($('#pay').val()==''){
			$('#err').show();
			$('#err>span').last().text('금액을 입력하세요');
			$('#sabun').focus();
			return false;
		}
	});
});
</script>
</head>
<body>
<div id="err">
	<span>x</span>
	<span><%=request.getAttribute("err") %></span>
</div>
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
			<h2>입력 페이지</h2>
			<form method="post">
				<div>
					<label for="sabun">sabun</label>
					<input type="text" name="sabun" id="sabun" />
				</div>
				<div>
					<label for="name">name</label>
					<input type="text" name="name" id="name" />
				</div>
				<div>
					<label for="sub">sub</label>
					<input type="text" name="sub" id="sub" />
				</div>
				<div>
					<label for="pay">pay</label>
					<input type="text" name="pay" id="pay" />
				</div>
				<div>
					<button type="submit">입 력</button>
					<button type="reset">취 소</button>
					<button type="button">뒤 로</button>
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




