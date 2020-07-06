<%@page import="com.bit.emp.Emp02Insert"%>
<%@page import="com.bit.emp.Emp02list"%>
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
			<td>
				<img alt="" src="img/logo.png">
			</td>
		</tr>
		<tr>
			<td bgcolor="gray" align="center">
				<a href="./">[HOME]</a>
				<a href="./list.jsp">[E M P]</a>
				<a href="#">[DEPT]</a>
				<a href="#">[LOGIN]</a>
			</td>
		</tr>
		<tr>
			<td>
				<!-- centent start -->
<%
	if("POST".equals(request.getMethod())){
		request.setCharacterEncoding("euc-kr");
		int sabun=Integer.parseInt(request.getParameter("sabun"));
		String name=request.getParameter("name");
		int pay=Integer.parseInt(request.getParameter("pay"));
		
		Emp02Insert emp=new Emp02Insert();
		emp.insert(sabun, name, pay);
		response.sendRedirect("list.jsp");
		return;
	}
%>
					<h1>입력페이지</h1>
					<form action="add.jsp" method="post">
						<table width="800" align="center">
							<tr>
								<td width="400">사번</td>
								<td><input type="text" name="sabun"></td>
							</tr>			
							<tr>
								<td>이름</td>
								<td><input type="text" name="name"></td>
							</tr>			
							<tr>
								<td>금액</td>
								<td><input type="text" name="pay"></td>
							</tr>			
							<tr>
								<td colspan="2">
									<input type="submit" value="입 력">
									<input type="reset" value="취 소">
								</td>
							</tr>						
						</table>
					</form>
				<!-- centent end -->
			</td>
		</tr>
		<tr>
			<td bgcolor="gray" align="center">
			비트캠프 서울시 서초구 강남대로 459<br>
			(주)비트컴퓨터 서초본원 대표이사 : 조현정<br>
			Copyright (c) 비트캠프 All rights reserved.<br>
			</td>
		</tr>
	</table>
</body>
</html>