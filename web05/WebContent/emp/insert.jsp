<%@page import="java.sql.DriverManager"%>
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
<%
String name=null;
int pay=0;
String param1=request.getParameter("name");
String param2=request.getParameter("pay");
try{
	name=param1.trim();
	pay=Integer.parseInt(param2.trim());
}catch(Exception e){
	response.sendRedirect("add.jsp?name="+param1);
	return;
}

String sql="insert into emp01 values (emp01_seq.nextval,'"+name+"',sysdate,"+pay+")";

try{
	Class.forName(driver);
	conn=DriverManager.getConnection(url, user, password);
	stmt=conn.createStatement();
	stmt.executeUpdate(sql);
}finally{
	if(stmt!=null)stmt.close();
	if(conn!=null)conn.close();
}


response.sendRedirect("list2.jsp");
%>
</body>
</html>










