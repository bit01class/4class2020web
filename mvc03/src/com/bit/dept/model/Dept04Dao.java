package com.bit.dept.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Dept04Dao {
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public Dept04Dao() throws SQLException {
		String driver="oracle.jdbc.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="scott";
		String password="tiger";
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		conn=DriverManager.getConnection(url, user, password);
	}
	
	public ArrayList<Dept04Dto> selectAll() throws SQLException{
		ArrayList<Dept04Dto> list=new ArrayList<Dept04Dto>();
		String sql="select * from dept04";
		try{
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				list.add(new Dept04Dto(
							rs.getInt("deptno")
							,rs.getString("dname")
							,rs.getString("loc")
						));
			}
		}finally{
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
		return list;
	}
	
	public int insertOne(String dname,String loc) throws SQLException{
		String sql="insert into dept04 values (dept04_seq.nextval,?,?)";
		try{
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, dname);
			pstmt.setString(2, loc);
			return pstmt.executeUpdate();
		}finally{
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
	}
	
	public int deleteOne(int deptno) throws SQLException{
		String sql="delete from dept04 where deptno=?";
		try{
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, deptno);
			return pstmt.executeUpdate();
		}finally{
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
	}
	
	public int maxDeptno() throws SQLException{
		String sql="select max(deptno) as \"max\" from dept04";
		try{
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next())	return rs.getInt("max");
		}finally{
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
		return 0;
	}
	
	public int updateOne(int deptno,String dname,String loc) throws SQLException{
		String sql="update dept04 set dname=?,loc=? where deptno=?";
		try{
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(3, deptno);
			pstmt.setString(1, dname);
			pstmt.setString(2, loc);
			return pstmt.executeUpdate();
		}finally{
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
	}
	
	public Dept04Dto selectOne(int deptno) throws SQLException{
		String sql="select * from dept04 where deptno=?";
		try{
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, deptno);
			rs=pstmt.executeQuery();
			if(rs.next()) return new Dept04Dto(
									rs.getInt("deptno")
									,rs.getString("dname")
									,rs.getString("loc")
									);
		}finally{
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
		return null;
	}
	
	public int rowCount() throws SQLException{
		String sql="select count(*) as cnt from dept04";
		try{
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next()) return rs.getInt("cnt");
		}finally{
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
		return 0;
	}
}



















