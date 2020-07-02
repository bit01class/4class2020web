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
			<h1>게시판</h1>
			<table width="90%" border="1" cellspacing="0" >
				<tr>
					<th width="80">글번호</th>
					<th>제목</th>
					<th width="100">글쓴이</th>
					<th width="100">날짜</th>
				</tr>
<%
	String key=request.getParameter("key");
	String word=request.getParameter("word");
	if(key==null)key="sub";
	if(word==null)word="";
	String sql="select num,sub,id,nalja,lev from bbs01 where "+key;
	sql+=" like '%"+word+"%'  order by ref desc,no asc";
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
		while(rs.next()){
			int gap=rs.getInt(5);
			String msg="";
			for(int i=0; i<gap; i++){
				msg+="&nbsp;&nbsp;&nbsp;";
			}
			if(gap!=0)msg+="┗";
%>
				<tr>
					<td><a href="detail.jsp?idx=<%=rs.getInt(1) %>"><%=rs.getInt(1) %></a></td>
					<td><a href="detail.jsp?idx=<%=rs.getInt(1) %>"><%=msg+rs.getString(2) %></a></td>
					<td><a href="detail.jsp?idx=<%=rs.getInt(1) %>"><%=rs.getString(3) %></a></td>
					<td><a href="detail.jsp?idx=<%=rs.getInt(1) %>"><%=rs.getDate(4) %></a></td>
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
			<form action="list.jsp">
				<select name="key">
					<option value="sub">제목</option>
					<option value="id">글쓴이</option>
				</select>
				<input type="text" name="word">
				<input type="submit" value="검색">
			</form>
			<a href="add.jsp">[입 력]</a>
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








