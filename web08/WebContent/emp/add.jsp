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
				<h1>�Է� ������</h1>
				<form action="insert.jsp" method="post">
					<table>
						<tr>
							<td>���</td>
							<td><input type="text" name="sabun"></td>
						</tr>
						<tr>
							<td>�̸�</td>
							<td><input type="text" name="name"></td>
						</tr>
						<tr>
							<td>�ݾ�</td>
							<td><input type="text" name="pay"></td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<input type="submit" value="�� ��">
								<input type="reset" value="�� ��">
							</td>
						</tr>
					</table>
				</form>
				</center>
				<!-- content end -->
			</td>
		</tr>
		<tr>
			<td align="center" bgcolor="#cccccc">
				��Ʈķ�� ����� ���ʱ� ������� 459<br>
				(��)��Ʈ��ǻ�� ���ʺ��� ��ǥ�̻� : ������<br>
				Copyright (c) ��Ʈķ�� All rights reserved.<br>
			</td>
		</tr>
	</table>
</body>
</html>