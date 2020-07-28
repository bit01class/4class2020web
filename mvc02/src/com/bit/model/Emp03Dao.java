package com.bit.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Emp03Dao {
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
}










