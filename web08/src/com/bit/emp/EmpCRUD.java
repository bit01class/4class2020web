package com.bit.emp;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.bit.util.MyOracle;

public class EmpCRUD {
	private static Connection conn;
	private static Statement stmt;
	private static ResultSet rs;

	public static ArrayList<EmpDto> list(){
		ArrayList<EmpDto> list=new ArrayList<EmpDto>();
		String sql="select * from emp02";
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
	
	public static void insert(int sabun,String name,int pay){
		String sql="insert into emp02 values (";
		sql+=sabun+",'"+name+"',sysdate,"+pay+")";
		
		try {
			conn=MyOracle.getConn();
			stmt=conn.createStatement();
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(stmt!=null)stmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public static EmpDto detail(int sabun){
		EmpDto bean=new EmpDto();
		String sql="select * from emp02 where sabun="+sabun;
		try {
			conn=MyOracle.getConn();
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			if(rs.next()){
				bean.setSabun(rs.getInt("sabun"));
				bean.setName(rs.getString("name"));
				bean.setNalja(rs.getDate("nalja"));
				bean.setPay(rs.getInt("pay"));
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
		
		return bean;
	}
}








