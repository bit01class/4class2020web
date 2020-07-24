package com.bit.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class EmpDao {

	public List<EmpDto> getList() throws SQLException{
		String sql="select empno,ename,job,deptno from emp";
		List<EmpDto> list=new ArrayList<>();
		try(
				Connection conn=MyOracle.getConnection();
				Statement stmt=conn.createStatement();
				ResultSet rs=stmt.executeQuery(sql);
				){
			while(rs.next()){
				EmpDto bean=new EmpDto();
				bean.setEmpno(rs.getInt("empno"));
				bean.setEname(rs.getString("ename"));
				bean.setJob(rs.getString("job"));
				bean.setDeptno(rs.getInt("deptno"));
				list.add(bean);
			}
		}
		return list;
	}
}
