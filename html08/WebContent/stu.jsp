{"students":[
	<%
	String sql="select * from student01 order by num";
	Connection conn=null;
	Statement stmt=null;
	ResultSet rs=null;
	try{
		conn=com.bit.util.MyOracle.getConnection();
		stmt=conn.createStatement();
		rs=stmt.executeQuery(sql);
		boolean begin=true;
		while(rs.next()){
			if(begin){//if(rs.first()){
				out.print("{");
				begin=false;
			}else{
				out.print(",{");
			}
			out.print("\"num\":"+rs.getInt("num")+",");
			out.print("\"name\":\""+rs.getString("name")+"\",");
			out.print("\"kor\":"+rs.getInt("kor")+",");
			out.print("\"eng\":"+rs.getInt("eng")+",");
			out.print("\"math\":"+rs.getInt("math"));
			out.println("}");
		}
	}finally{
		if(rs!=null)rs.close();
		if(stmt!=null)stmt.close();
		if(conn!=null)conn.close();
	}
	%>
]}
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
