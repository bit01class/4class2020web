<%@page import="com.bit.emp.Emp02Delete"%>
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
					<!-- POST -->
					<%
					if("POST".equals(request.getMethod())){
						int sabun=Integer.parseInt(request.getParameter("sabun"));
						Emp02Delete emp=new Emp02Delete();
						emp.delete(sabun);
						response.sendRedirect("list.jsp");
						return;
					}
					%>
					<!-- GET -->
					<table align="center" width="400">
						<tr>
							<td align="center">
								<%=request.getParameter("idx")%>�� ���� ���� �Ͻðڽ��ϱ�?
							</td>
						</tr>
						<tr>
							<td align="center">
								<form method="post">
									<input type="hidden" name="sabun" value="<%=request.getParameter("idx")%>">
									<input type="submit" value="�� ��"> 
								</form>
							</td>
						</tr>
					</table>
					
				<!-- centent end -->
			</td>
		</tr>
		<tr>
			<td bgcolor="gray" align="center">
			��Ʈķ�� ����� ���ʱ� ������� 459<br>
			(��)��Ʈ��ǻ�� ���ʺ��� ��ǥ�̻� : ������<br>
			Copyright (c) ��Ʈķ�� All rights reserved.<br>
			</td>
		</tr>
	</table>
</body>
</html>