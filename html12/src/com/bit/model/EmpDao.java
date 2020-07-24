package com.bit.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

public class EmpDao {
	private static Logger log=Logger.getGlobal();

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
	
	public void insert(int empno,String ename,String job,int deptno) throws SQLException{
		String sql="insert into emp (empno,ename,job,deptno,hiredate) values (";
		sql+=empno+",'"+ename+"','"+job+"',"+deptno+",sysdate)";
		try(Connection conn=MyOracle.getConnection();
				Statement stmt=conn.createStatement();){
			log.info(sql);
			stmt.executeUpdate(sql);
		}
	}
	
	public EmpDto getOne(int empno){
		String sql="select * from emp where empno="+empno;
		EmpDto bean=new EmpDto();
		try(
				Connection conn=MyOracle.getConnection();
				Statement stmt=conn.createStatement();
				ResultSet rs=stmt.executeQuery(sql);
				){
			if(rs.next()){
				log.warning("그냥 출력");
				bean.setEmpno(rs.getInt("empno"));
				bean.setEname(rs.getString("ename"));
				bean.setJob(rs.getString("job"));
				bean.setDeptno(rs.getInt("deptno"));
				bean.setHiredate(rs.getDate("hiredate"));
				bean.setMgr(rs.getInt("mgr"));
				bean.setSal(rs.getInt("sal"));
				bean.setComm(rs.getInt("comm"));
			}
		}catch (Exception e) {
			log.warning("오라클 실행과정중 오류");		
		}
		
		return bean;
	}
}














