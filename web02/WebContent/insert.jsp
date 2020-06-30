<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	String num=request.getParameter("num");
	String name=request.getParameter("name");
	String kor=request.getParameter("kor");
	String eng=request.getParameter("eng");
	String math=request.getParameter("math");
	
	// insert into student01 values (1,'tester',90,80,70)
	String sql="insert into student01 values ("+num+",'"+name+"',"+kor+","+eng+","+math+")";
	System.out.println(sql);
	String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@127.0.0.1:1521:xe";
	String user="scott";
	String password="tiger";
	
	Class.forName(driver);
	java.util.Properties info=new java.util.Properties();
	info.setProperty("user", user);
	info.setProperty("password", password);
	
	Connection conn=null;
	Statement stmt=null;
	try{
		conn=DriverManager.getConnection(url,info);
		stmt=conn.createStatement();
		stmt.executeUpdate(sql);
	}finally{
		if(stmt!=null)stmt.close();
		if(conn!=null)conn.close();
	}
	%>
	<a href="index.jsp">리스트로 이동</a>
</body>
</html>






