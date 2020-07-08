<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="bean" class="com.bit.EmpDto"></jsp:useBean>
<jsp:setProperty property="*" name="bean"/>
	<%
		String sql="insert into emp02 values ("+bean.getSabun();
		sql+=",'"+bean.getName()+"',sysdate,"+bean.getPay()+")";
	
		Connection conn=null;
		Statement stmt=null;
		try{
			conn=com.bit.MyOracle.getConnection();
			stmt=conn.createStatement();
			stmt.executeUpdate(sql);
		}finally{
			if(stmt!=null)stmt.close();
			if(conn!=null)conn.close();
		}
		response.sendRedirect("../?title=emp/list");
	%>
</body>
</html>








