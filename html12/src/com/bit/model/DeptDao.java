package com.bit.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DeptDao {

	public List getList() throws SQLException{
		String sql="select * from dept";
		List<DeptDto> list=new ArrayList<>();
		try(
			Connection conn=MyOracle.getConnection();
			Statement stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery(sql);
				){
			while(rs.next()){
				DeptDto bean=new DeptDto();
				bean.setDeptno(rs.getInt("deptno"));
				bean.setDname(rs.getString("dname"));
				bean.setLoc(rs.getString("loc"));
				list.add(bean);
			}
		}
		return list;
	}
	public DeptDto getOne(int deptno) throws SQLException{
		String sql="select * from dept where deptno="+deptno;
		DeptDto bean = new DeptDto();
		try(
				Connection conn=MyOracle.getConnection();
				Statement stmt=conn.createStatement();
				ResultSet rs=stmt.executeQuery(sql);
				){
			if(rs.next()){
				bean.setDeptno(rs.getInt("deptno"));
				bean.setDname(rs.getString("dname"));
				bean.setLoc(rs.getString("loc"));
			}
		}
		return bean;
	}
}














