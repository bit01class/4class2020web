package com.bit.dept04.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class Dept04Dao {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public Dept04Dao() {
		// connection pools api
		//http://tomcat.apache.org/tomcat-7.0-doc/jdbc-pool.html
		// context.xml 다음추가
		/*
		<Resource 
			auth="Container" 
			name="jdbc/oracle" 
			type="javax.sql.DataSource" 
			driverClassName="oracle.jdbc.OracleDriver" 
			url="jdbc:oracle:thin:@localhost:1521:xe" 
			username="scott"
			password="tiger" 
			maxActive="50" 
			maxIdle="100" 
			maxWait="10000" 
			minIdle="10" 
		/>
		*/
		try {
			InitialContext init = new InitialContext();
			javax.naming.Context context = null;
			context=(Context) init.lookup("java:/comp/env");
			System.out.println(context);
			javax.sql.DataSource dataSource=null;
			dataSource=(DataSource) context.lookup("jdbc/oracle");
			
			
			System.out.println(dataSource);
			conn=dataSource.getConnection();
			System.out.println(conn);
		} catch (NamingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		//////////////////////////////////////////////
//		try {
//			Class.forName("oracle.jdbc.OracleDriver");
//			conn=DriverManager.getConnection(
//					"jdbc:oracle:thin:@localhost:1521:xe",
//					"scott","tiger");
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} catch (ClassNotFoundException e) {
//			e.printStackTrace();
//		}
	}

	public List<Dept04Dto> selectAll(){
		List<Dept04Dto> list=new ArrayList<Dept04Dto>();
		try{
			pstmt=conn.prepareStatement("select * from dept04");
			rs=pstmt.executeQuery();
			while(rs.next()){
			list.add(new Dept04Dto(
					rs.getInt("deptno"),
					rs.getString("dname"),
					rs.getString("loc")
					));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
}
