<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body background="/web04/img/bg.png">
<table width="1024" align="center">
	<tr>
		<td colspan="6" bgcolor="white"><img src="/web04/img/logo.png"></td>
	</tr>
	<tr>
		<td bgcolor="#cccccc">&nbsp;</td>
		<td align="center" bgcolor="#cccccc" width="100"><a href="/web04/">[HOME]</a></td>
		<td align="center" bgcolor="#cccccc" width="100"><a href="/web04/bbs/list.jsp">[B B S]</a></td>
		<td align="center" bgcolor="#cccccc" width="100"><a href="/web04/emp/list.jsp">[E M P]</a></td>
		<td align="center" bgcolor="#cccccc" width="100"><a href="/web04/login/form.jsp">[LOGIN]</a></td>
		<td align="center" bgcolor="#cccccc">&nbsp;</td>
	</tr>
	<tr>
		<td colspan="6" bgcolor="white">
			<center>
			<h1>상세보기</h1>
			<%
			String num=request.getParameter("idx");
			String id="";
			String nalja="";
			String sub="";
			String cntnt="";
			int ref=0,no=0,lev=0;
			String sql="select id,nalja,sub,cntnt,ref,no,lev from bbs01 where num="+num;
			
			String driver="oracle.jdbc.driver.OracleDriver";
			String url="jdbc:oracle:thin:@localhost:1521:xe";
			String user="scott";
			String password="tiger";
			
			Class.forName(driver);
			Connection conn=null;
			Statement stmt=null;
			ResultSet rs=null;
			try{
				conn=DriverManager.getConnection(url, user, password);
				stmt=conn.createStatement();
				rs=stmt.executeQuery(sql);
				if(rs.next()){
					id=rs.getString(1);
					nalja=rs.getDate(2).toString();
					sub=rs.getString(3);
					cntnt=rs.getString(4);
					ref=rs.getInt(5);
					no=rs.getInt(6);
					lev=rs.getInt(7);
				}
			}finally{
				if(rs!=null)rs.close();
				if(stmt!=null)stmt.close();
				if(conn!=null)conn.close();
			}
			%>
			<table width="800">
				<tr>
					<td width="100" bgcolor="#cccccc" align="center">글번호</td>
					<td><%=num %></td>
					<td width="100" bgcolor="#cccccc" align="center">글쓴이</td>
					<td><%=id %></td>
					<td width="100" bgcolor="#cccccc" align="center">날짜</td>
					<td><%=nalja %></td>
				</tr>
				<tr>
					<td bgcolor="#cccccc" align="center">제목</td>
					<td colspan="5"><%=sub %></td>
				</tr>
				<tr>
					<td colspan="6"><%=cntnt %></td>
				</tr>
				<tr>
					<td colspan="6" bgcolor="#cccccc" align="center">
						<a href="edit.jsp?idx=<%=num%>">[수 정]</a>
						<a href="delete.jsp?idx=<%=num%>">[삭 제]</a>
						<a href="re.jsp?ref=<%=ref%>&no=<%=no%>&lev=<%=lev%>">[답 글]</a>
					</td>
				</tr>
			</table>
			</center>
		</td>
	</tr>
	<tr>
		<td bgcolor="gray" ></td>
		<td bgcolor="gray" colspan="4">
비트캠프 서울시 서초구 강남대로 459 (서초동, 백암빌딩)<br>
Copyright (c) 비트캠프 All rights reserved.
		</td>
		<td bgcolor="gray" ></td>
	</tr>
</table>
</body>
</html>








