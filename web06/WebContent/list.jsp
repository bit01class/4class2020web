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
				<h1 align="center">�� ��</h1>
				<table width="800" align="center">
					<tr>
						<th width="80">���</th>
						<th>�̸�</th>
						<th width="120">��¥</th>
						<th width="120">�ݾ�</th>
					</tr>
					<%
					com.bit.emp.Emp02list emp=null;
					emp=new com.bit.emp.Emp02list();
					java.util.ArrayList<com.bit.emp.dto.Emp02Bean> list=emp.list();
					for(int i=0; i<list.size(); i++){
						com.bit.emp.dto.Emp02Bean bean=list.get(i);
					%>
					<tr>
						<td><%=bean.getSabun() %></td>
						<td><%=bean.getName() %></td>
						<td><%=bean.getNalja() %></td>
						<td><%=bean.getPay() %></td>
					</tr>
					<%} %>
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