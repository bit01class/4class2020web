package com.bit.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Logger;

public class Emp03Dao {
	java.util.logging.Logger log=Logger.getGlobal();
	Connection conn;

	public Emp03Dao() throws SQLException {
		String driver="oracle.jdbc.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="scott";
		String password="tiger";
		try {
			Class.forName(driver);
			conn=DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Emp03Dto> selectAll() throws SQLException{
		String sql="select * from emp03";
		ArrayList<Emp03Dto> list=new ArrayList<Emp03Dto>();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try{
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				Emp03Dto bean=new Emp03Dto();
				bean.setSabun(rs.getInt("sabun"));
				bean.setName(rs.getString("name"));
				bean.setSub(rs.getString("sub"));
				list.add(bean);
				log.info(bean.toString());
			}
		}finally{
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
		return list;
	}
	
	public void insertOne(int sabun,String name,String sub,int pay) throws SQLException{
		String sql="insert into emp03 values (?,?,?,sysdate,?)";
		PreparedStatement pstmt = null;
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, sabun);
			pstmt.setString(2, name);
			pstmt.setString(3, sub);
			pstmt.setInt(4, pay);
			pstmt.executeUpdate();
		}finally{
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
	}
	
	public Emp03Dto selectOne(int sabun) throws SQLException{
		String sql="select * from emp03 where sabun=?";
		Emp03Dto bean=new Emp03Dto();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try{
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, sabun);
			rs=pstmt.executeQuery();
			if(rs.next()){
				bean.setSabun(rs.getInt("sabun"));
				bean.setName(rs.getString("name"));
				bean.setNalja(rs.getDate("nalja"));
				bean.setSub(rs.getString("sub"));
				bean.setPay(rs.getInt("pay"));
			}
			log.info(bean.toString());
		}finally{
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
		return bean;
	}
	
	public int updateOne(int sabun,String name,String sub,int pay) throws SQLException{
		String sql="update emp03 set name=?,sub=?,pay=? where sabun=?";
		int result=0;
		PreparedStatement pstmt=null;
		try{
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, sub);
			pstmt.setInt(3, pay);
			pstmt.setInt(4, sabun);
			result=pstmt.executeUpdate();
			log.info("update:"+(result>0));
		}finally{
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
		return result;
	}
}










