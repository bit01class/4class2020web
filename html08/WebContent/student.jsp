<?xml version="1.0" encoding="UTF-8"?>
<%@ page language="java" contentType="application/xml"
    pageEncoding="UTF-8" import="java.sql.*"%>
<students>
	<%
	String sql="select * from student01";
	Connection conn=null;
	Statement stmt=null;
	ResultSet rs=null;
	try{
		conn=com.bit.util.MyOracle.getConnection();
		stmt=conn.createStatement();
		rs=stmt.executeQuery(sql);
		while(rs.next()){
			out.println("<student>");
			out.println("	<num>"+rs.getInt("num")+"</num>");
			out.println("	<name>"+rs.getString("name")+"</name>");
			out.println("	<kor>"+rs.getInt("kor")+"</kor>");
			out.println("	<eng>"+rs.getInt("eng")+"</eng>");
			out.println("	<math>"+rs.getInt("math")+"</math>");
			out.println("</student>");
		}
	}finally{
		if(rs!=null)rs.close();
		if(stmt!=null)stmt.close();
		if(conn!=null)conn.close();
	}
	%>
</students>








