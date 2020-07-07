package com.bit.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MyOracle {
	private static String driver="oracle.jdbc.driver.OracleDriver";
	private static String url="jdbc:oracle:thin:@localhost:1521:xe";
	private static String user="scott";
	private static String password="tiger";
	private static Connection conn;
	
	private MyOracle() {}
	
	public static Connection getConn() throws SQLException{
		
		if(conn==null || conn.isClosed()){
			try {
				Class.forName(driver);
			} catch (ClassNotFoundException e) {
				System.out.println("ojdbc14.jar�� �־����� Ȯ���ϰ�");
				System.out.println("����̹� ��ΰ� �´��� Ȯ���ϼ���");
			}
			conn=DriverManager.getConnection(url, user, password);
		}
		
		return conn;
	}
}





