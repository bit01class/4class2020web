<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta http-equiv="refresh" content="0; url=list.jsp">
<title>Insert title here</title>
</head>
<body>
	<%
		String empno=request.getParameter("empno");
		String ename=request.getParameter("ename");
		String job=request.getParameter("job");
		String deptno=request.getParameter("deptno");
		String sql="insert into emp (empno,ename,job,hiredate,deptno) values (";
		sql+=empno+",'"+ename+"','"+job+"',sysdate,"+deptno+")";
		System.out.println(sql);
		
		String driver="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="scott";
		String password="tiger";
		
		Class.forName(driver);
		Connection conn=null;
		Statement stmt=null;
		try{
			conn=DriverManager.getConnection(url, user, password);
			stmt=conn.createStatement();
			stmt.executeUpdate(sql);
		}finally{
			if(stmt!=null)stmt.close();
			if(conn!=null)conn.close();
		}
	%>
	<h1>처리완료</h1>
</body>
</html>










