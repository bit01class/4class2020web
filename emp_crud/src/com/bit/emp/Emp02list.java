package com.bit.emp;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bit.emp.dto.Emp02Bean;

public class Emp02list {
	
	public ArrayList<Emp02Bean> list(){
		ArrayList<Emp02Bean> list=new ArrayList<Emp02Bean>();
		String sql="{call emp02list(?)}";
		Connection conn=null;
		CallableStatement cstmt=null;
		ResultSet rs=null;
		try {
			conn=Oracle.getConnection();
			cstmt=conn.prepareCall(sql);
			cstmt.registerOutParameter(1, oracle.jdbc.OracleTypes.CURSOR);
			cstmt.execute();
			rs=(ResultSet) cstmt.getObject(1);
			while(rs.next()){
				Emp02Bean bean=new Emp02Bean();
				bean.setSabun(rs.getInt(1));
				bean.setName(rs.getString(2));
				bean.setNalja(rs.getDate(3));
				bean.setPay(rs.getInt(4));
				list.add(bean);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			try {
				if(rs!=null)rs.close();
				if(cstmt!=null)cstmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}

}











