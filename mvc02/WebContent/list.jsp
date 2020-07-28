<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,com.bit.model.Emp03Dto"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/frame.css"/>
<style type="text/css">
	#content{}
	#content>h2{
		text-align: center;
	}
	#content>table{
		width: 500px;
		margin: 50px  auto;
	}
	#content>table>tr{}
	#content>table,#content>table tr>th,#content>table tr>td{
		border-collapse: collapse;
		border:1px solid gray;
	}
	#content>table+a{
		display: block;
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
			<h2>EMP List Page</h2>
			<table>
				<tr>
					<th>사번</th>
					<th>제목</th>
					<th>이름</th>
				</tr>
				<%
ArrayList<Emp03Dto> list=(ArrayList<Emp03Dto>)request.getAttribute("alist");
//for(int i=0; i<list.size(); i++){
//	Emp03Dto bean=list.get(i);
				for(Emp03Dto bean:list){
				%>
				<tr>
					<td><%=bean.getSabun() %></td>
					<td><%=bean.getSub() %></td>
					<td><%=bean.getName() %></td>
				</tr>
				<%} %>
			</table>
			<a href="add.bit">입 력</a>
		</div>
		<div id="footer">
			<address>비트캠프 서울시 서초구 강남대로 459 (서초동, 백암빌딩)</address>
			(주)비트컴퓨터 서초본원 <br/>
			Copyright (c) 비트캠프 All rights reserved.
		</div>
	</div>
</body>
</html>




