<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../template/header.jspf" %>
<%@ include file="../template/menu.jspf" %>
<%

int sabun=Integer.parseInt(request.getParameter("idx"));
String name=null;
java.sql.Date nalja=null;
int pay=0;

String sql="select * from emp01 where sabun="+sabun;
try{
	Class.forName(driver);
	conn=java.sql.DriverManager.getConnection(url, user, password);
	stmt=conn.createStatement();
	rs=stmt.executeQuery(sql);
	if(rs.next()){
		name=rs.getString("name");
		nalja=rs.getDate("nalja");
		pay=rs.getInt("pay");
	}
}finally{
	if(rs!=null)rs.close();
	if(stmt!=null)stmt.close();
	if(conn!=null)conn.close();
}
%>

	<h1>��������</h1>
	<table width="800" align="center">
		<tr>
			<td>���</td>
			<td><%=sabun %></td>
		</tr>
		<tr>
			<td>�̸�</td>
			<td><%=name %></td>
		</tr>
		<tr>
			<td>��¥</td>
			<td><%=nalja %></td>
		</tr>
		<tr>
			<td>�ݾ�</td>
			<td><%=pay %></td>
		</tr>
		<tr>
			<td colspan="2">
				<a href="#">[�� ��]</a>
				<a href="#">[�� ��]</a>
			</td>
		</tr>
	</table>
<%@ include file="../template/footer.jspf" %>
</body>
</html>






