package com.bit.emp04.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class Emp04Dao {
	DataSource dataSource;
	
	public Emp04Dao() {
		try {
			InitialContext context = new InitialContext();
			dataSource=(DataSource)(context.lookup("java:comp/env/jdbc/oracle"));
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}

	public Emp04Dto login(int sabun,String name){
		String sql="select * from emp04 where sabun=? and name=?";
		Emp04Dto bean=new Emp04Dto();
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			conn=dataSource.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, sabun);
			pstmt.setString(2, name);
			rs=pstmt.executeQuery();
			if(rs.next()){
				bean.setSabun(rs.getInt("sabun"));
				bean.setName(rs.getString("name"));
				bean.setLvl(rs.getInt("lvl"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			try {
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return bean;
	}
}
