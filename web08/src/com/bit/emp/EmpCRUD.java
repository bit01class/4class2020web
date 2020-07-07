package com.bit.emp;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.bit.util.MyOracle;

public class EmpCRUD {

	public static ArrayList<EmpDto> list(){
		ArrayList<EmpDto> list=new ArrayList<EmpDto>();
		String sql="select * from emp02";
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		try {
			conn=MyOracle.getConn();
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			while(rs.next()){
				EmpDto bean=new EmpDto();
				bean.setSabun(rs.getInt("sabun"));
				bean.setName(rs.getString("name"));
				bean.setNalja(rs.getDate("nalja"));
				bean.setPay(rs.getInt("pay"));
				list.add(bean);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null)rs.close();
				if(stmt!=null)stmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
}








