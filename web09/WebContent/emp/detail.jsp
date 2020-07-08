<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<jsp:useBean id="bean" class="com.bit.EmpDto"></jsp:useBean>
<jsp:setProperty property="sabun" name="bean"/>
<%
Connection conn=null;
Statement stmt=null;
ResultSet rs=null;
try{
	conn=com.bit.MyOracle.getConnection();
	stmt=conn.createStatement();
	rs=stmt.executeQuery("select * from emp02 where sabun="+bean.getSabun());
	if(rs.next()){
		bean.setName(rs.getString("name"));
		bean.setNalja(rs.getDate("nalja"));
		bean.setPay(rs.getInt("pay"));
	}
}finally{
	if(rs!=null)rs.close();
	if(stmt!=null)stmt.close();
	if(conn!=null)conn.close();
}
%>
<body>
	<h1>상세페이지</h1>
	<table width="800">
		<tr>
			<td width="300">사번</td>
			<td><jsp:getProperty property="sabun" name="bean"/></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><jsp:getProperty property="name" name="bean"/></td>
		</tr>
		<tr>
			<td>날짜</td>
			<td><jsp:getProperty property="nalja" name="bean"/></td>
		</tr>
		<tr>
			<td>금액</td>
			<td><jsp:getProperty property="pay" name="bean"/></td>
		</tr>
		<tr>
			<td colspan="2">
				<a href="?title=emp/edit&sabun=<jsp:getProperty property="sabun" name="bean"/>">[수 정]</a>
				<a href="emp/delete.jsp?sabun=<jsp:getProperty property="sabun" name="bean"/>">[삭 제]</a>			
			</td>
		</tr>
	</table>
</body>
</html>







