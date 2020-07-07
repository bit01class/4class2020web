<%@page import="com.bit.emp.EmpDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.bit.emp.EmpCRUD"%>
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
				<img alt="" src="../img/logo.png">
			</td>
		</tr>
		<tr>
			<td align="center" bgcolor="#cccccc">
				<a href="../index.jsp">[HOME]</a>
				<a href="./list.jsp">[E M P]</a>
				<a href="../dept/list.jsp">[DEPT]</a>
				<a href="../login/form.jsp">[LOGIN]</a>
			</td>
		</tr>
		<tr>
			<td>
				<!-- content start -->
				<center>
				<h1>상세 페이지</h1>
				<jsp:useBean id="bean" class="com.bit.emp.EmpDto"></jsp:useBean>
				<jsp:setProperty property="sabun" name="bean"/>
				<%
//com.bit.emp.EmpDto bean2=new com.bit.emp.EmpDto();
//bean2.setSabun(Integer.parseInt(request.getParameter("sabun")));
				
				bean=EmpCRUD.detail(bean.getSabun());
				%>
					<table width="800">
						<tr>
							<td width="300" bgcolor="#cccccc">사번</td>
							<td><%=bean.getSabun() %></td>
						</tr>
						<tr>
							<td width="300" bgcolor="#cccccc">이름</td>
							<td><%=bean.getName() %></td>
						</tr>
						<tr>
							<td width="300" bgcolor="#cccccc">날짜</td>
							<td><%=bean.getNalja() %></td>
						</tr>
						<tr>
							<td width="300" bgcolor="#cccccc">금액</td>
							<td><%=bean.getPay() %></td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<a href="edit.jsp?sabun=<%=bean.getSabun()%>&name=<%=bean.getName()%>&pay=<%=bean.getPay()%>">[수 정]</a>
								<a href="delete.jsp">[삭 제]</a>
							</td>
						</tr>
					</table>
				</center>
				<!-- content end -->
			</td>
		</tr>
		<tr>
			<td align="center" bgcolor="#cccccc">
				비트캠프 서울시 서초구 강남대로 459<br>
				(주)비트컴퓨터 서초본원 대표이사 : 조현정<br>
				Copyright (c) 비트캠프 All rights reserved.<br>
			</td>
		</tr>
	</table>
</body>
</html>