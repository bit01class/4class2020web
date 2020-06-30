<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table border="1" width="800">
	<tr>
		<td width="50">학번</td>
		<td>이름</td>
		<td>국어</td>
		<td>영어</td>
		<td>수학</td>
	</tr>
<%
	String sql="select * from student01";
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="scott";
	String password="tiger";
	Properties info=new Properties();
	info.setProperty("user", user);
	info.setProperty("password", password);
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn=null;
	Statement stmt=null;
	ResultSet rs=null;
	try{
		conn=DriverManager.getConnection(url, info);
		stmt=conn.createStatement();
		rs=stmt.executeQuery(sql);
		while(rs.next()){
%>
	<tr>
		<td><%=rs.getString(1) %></td>
		<td><%=rs.getString(2) %></td>
		<td><%=rs.getString(3) %></td>
		<td><%=rs.getString(4) %></td>
		<td><%=rs.getString(5) %></td>
	</tr>
<%
		}
	//}catch(Exception e){
	}finally{
		if(rs!=null)rs.close();
		if(stmt!=null)stmt.close();
		if(conn!=null)conn.close();
	}
%>
</table>
<a href="add.jsp">[입 력]</a>
</body>
</html>









