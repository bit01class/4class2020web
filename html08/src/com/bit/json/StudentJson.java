package com.bit.json;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.util.MyOracle;

public class StudentJson extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		resp.setContentType("application/json;charset=utf-8");
		PrintWriter out = resp.getWriter();
		out.println("{\"students\":[");
		String sql="select * from student01 order by num desc";
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		try {
			conn=MyOracle.getConnection();
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
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			try {
				if(rs!=null)rs.close();
				if(stmt!=null)stmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		out.println("]}");
	}
}











