<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table width="100%">
	<tr>
		<td colspan="6"><img src="../img/logo.png"></td>
	</tr>
	<tr>
		<td bgcolor="gray"></td>
		<td bgcolor="#aaaaaa" width="120" align="center"><a href="../index.jsp">[HOME]</a></td>
		<td bgcolor="#aaaaaa" width="120" align="center"><a href="../dept/list.jsp">[DEPT]</a></td>
		<td bgcolor="#aaaaaa" width="120" align="center"><a href="list.jsp">[E M P]</a></td>
		<td bgcolor="#aaaaaa" width="120" align="center"><a href="../login/login.jsp">[LOGIN]</a></td>
		<td bgcolor="gray"></td>
	</tr>
	<tr>
		<td colspan="6">
		<!-- content start -->
		<center>
		<h1>EMP EDIT PAGE</h1>
		<form action="update.jsp">
		<table border="0" width="800">
			<%
			String empno=request.getParameter("empno");
			String sql="select empno,ename,job,mgr,hiredate,sal,comm,";
			sql+="(select dname from dept where dept.deptno=emp.deptno) ";
			sql+="from emp where empno="+empno;
			
			String driver="oracle.jdbc.driver.OracleDriver";
			String url="jdbc:oracle:thin:@localhost:1521:xe";
			String user="scott";
			String password="tiger";
			
			Connection conn=null;
			Statement stmt=null;
			ResultSet rs=null;
			
			try{
				Class.forName(driver);
				conn=DriverManager.getConnection(url, user, password);
				stmt=conn.createStatement();
				rs=stmt.executeQuery(sql);
				if(rs.next()){
			%>
			<tr>
				<td bgcolor="#aaaaaa" align="center">empno</td>
				<td><input type="text" name="empno" value="<%=rs.getInt(1) %>" readonly="readonly"></td>
			</tr>
			<tr>
				<td bgcolor="#aaaaaa" align="center">ename</td>
				<td><input type="text" name="ename" value="<%=rs.getString(2) %>"></td>
			</tr>
			<tr>
				<td bgcolor="#aaaaaa" align="center">job</td>
				<td><input type="text" name="job" value="<%=rs.getString(3) %>"></td>
			</tr>
			<tr>
				<td bgcolor="#aaaaaa" align="center">mgr</td>
				<td><input type="text" name="mgr" value="<%=rs.getInt(4) %>"></td>
			</tr>
			<tr>
				<td bgcolor="#aaaaaa" align="center">hiredate</td>
				<td><%=rs.getDate(5) %></td>
			</tr>
			<tr>
				<td bgcolor="#aaaaaa" align="center">sal</td>
				<td><input type="text" name="sal" value="<%=rs.getInt(6) %>"></td>
			</tr>
			<tr>
				<td bgcolor="#aaaaaa" align="center">comm</td>
				<td><input type="text" name="comm" value="<%=rs.getInt(7) %>"></td>
			</tr>
			<tr>
				<td bgcolor="#aaaaaa" align="center">dname</td>
				<td><%=rs.getString(8) %></td>
			</tr>
			<tr>
				<td colspan="2"  align="center">
					<input type="submit" value="수 정">
					<input type="reset" value="취 소">
				</td>
			</tr>
			<%
				} 
			}finally{
				if(rs!=null)rs.close();
				if(stmt!=null)stmt.close();
				if(conn!=null)conn.close();
			}
			%>
		</table>
		</form>
		</center>
		<!-- content end -->
		</td>
	</tr>
	<tr>
		<td colspan="6"  bgcolor="gray" align="center">
		비트캠프 서울시 서초구 강남대로 459 (서초동, 백암빌딩)｜ 사업자등록번호 : 214-85-24928<br>
(주)비트컴퓨터 서초본원 대표이사 : 조현정 / 문의 : 02-3486-9600 / 팩스 : 02-6007-1245<br>
통신판매업 신고번호 : 제 서초-00098호 / 개인정보보호관리책임자 : 최종진<br>
Copyright (c) 비트캠프 All rights reserved.
		</td>
	</tr>
</table>
</body>
</html>