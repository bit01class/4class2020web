package com.bit.emp;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

public class Emp02Insert {
	
	public void insert(int sabun,String name,int pay){
		// sql = {call 프로시져명}
		String sql="{call emp02insert("+sabun+",'"+name+"',"+pay+")}";
		Connection conn=null;
		CallableStatement cstmt=null;
		try{
			conn=Oracle.getConnection();
			cstmt=conn.prepareCall(sql);
			cstmt.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
				try {
					if(cstmt!=null)cstmt.close();
					if(conn!=null)conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
	}


}






