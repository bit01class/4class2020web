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
	String deptno=request.getParameter("deptno");
	String sql="delete from dept where deptno="+deptno;
	String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="scott";
	String password="tiger";
	
	Connection conn=null;
	Statement stmt=null;
	try{
		Class.forName(driver);
		conn=DriverManager.getConnection(url, user, password);
		stmt=conn.createStatement();
		stmt.executeUpdate(sql);
	}catch(ClassNotFoundException e){
		System.out.println("ojdbc14.jar가 있는지 확인하고 패키지 경로를 다시 확인하세요");
	}catch(Exception e){
		System.out.println("sql,url,user,password를 다시 한번 확인하세요");
	}finally{
		if(stmt!=null)stmt.close();
		if(conn!=null)conn.close();
	}
	%>
</body>
</html>










