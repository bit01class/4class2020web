package com.bit.dept;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.bit.util.MyOracle;

public class DeptCRUD {
	private Connection conn;
	private Statement stmt;
	private ResultSet rs;
	
	public ArrayList<DeptDto> list() throws SQLException{
		ArrayList<DeptDto> list=new ArrayList<DeptDto>();
		String sql="select * from dept01 order by num desc";
		try{
			conn=MyOracle.getConn();
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			while(rs.next()){
				DeptDto bean=new DeptDto();
				bean.setNum(rs.getInt("num"));
				bean.setId(rs.getString("id"));
				bean.setName(rs.getString("name"));
				bean.setLev(rs.getInt("lev"));
				list.add(bean);
			}
		}finally{
			if(rs!=null)rs.close();
			if(stmt!=null)stmt.close();
			if(conn!=null)conn.close();
		}
		return list;
	}
	
	public void insert(DeptDto bean) throws SQLException{
		String sql="insert into dept01 values (dept01_seq.nextval,'";
		sql+=bean.getId()+"','"+bean.getPw()+"','"+bean.getName()+"',2)";
		try{
			conn=MyOracle.getConn();
			stmt=conn.createStatement();
			stmt.executeUpdate(sql);
		}finally{
			if(stmt!=null)stmt.close();
			if(conn!=null)conn.close();
		}
	}
	
	public void detail(DeptDto bean) throws SQLException{
		String sql="select * from dept01 where num="+bean.getNum();
		try{
			conn=MyOracle.getConn();
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			if(rs.next()){
				bean.setId(rs.getString("id"));
				bean.setName(rs.getString("name"));
				bean.setNum(rs.getInt("num"));
				bean.setLev(rs.getInt("lev"));
				bean.setPw(rs.getString("pw"));
			}
		}finally{
			if(rs!=null)rs.close();
			if(stmt!=null)stmt.close();
			if(conn!=null)conn.close();
		}
	}
	
	public void login(DeptDto bean) throws SQLException{
		String sql="select name,lev from dept01 where id='";
		sql+=bean.getId()+"' and pw='"+bean.getPw()+"'";
		
		try{
			conn=MyOracle.getConn();
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			if(rs.next()){
				bean.setResult(true);
				bean.setName(rs.getString(1));
				bean.setLev(rs.getInt(2));
			}
		}finally{
			if(rs!=null)rs.close();
			if(stmt!=null)stmt.close();
			if(conn!=null)conn.close();
		}
	}
}












