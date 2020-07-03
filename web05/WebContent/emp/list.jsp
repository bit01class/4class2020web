<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body bgcolor="#cccccc">
<%@ include file="../template/header.jspf" %>
<%@ include file="../template/menu.jspf" %>
	<h1>LIST PAGE</h1>
	<table width="95%" border="1" cellspacing="0" align="center">
		<tr>
			<th>사번</th>
			<th>이름</th>
			<th>날짜</th>
			<th>금액</th>
		</tr>
		<%
		int p=1;
		String param=request.getParameter("page");
		if(param!=null) p=Integer.parseInt(param);
		
		int startNum=1+(p-1)*10;//	01,11,21,31
		int endNum=10+(p-1)*10; //	10,20,30,40
		String sql="select * from (select rownum as rn,sabun,name,nalja,pay from ";
		sql+=" (select * from emp01 order by sabun desc)) where rn between ";
		sql+=startNum+" and "+endNum;
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
		%>
		<tr>
			<td><a href="#"><%=rs.getInt("sabun") %></a></td>
			<td><a href="#"><%=rs.getString("name") %></a></td>
			<td><a href="#"><%=rs.getDate("nalja") %></a></td>
			<td><a href="#"><%=rs.getInt("pay") %></a></td>
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
	<center>
	<!--  -->
	<%
	//int tot=151;
	//if(tot%10==0)tot=tot/10;
	//else tot=tot/10+1;
	// 01~10 	-1		/10=0	+1		1
	// 11~20	-1		/10=1	+1		2
	// 21~30	-1		/10=2	+1		3
	
	int tot=400;	// select count(*) from emp01;
	int limit=(tot-1)/10+1;
	// p= 01~10	-1	/10=0	 +1)*10		limit=10;
	// p= 11~20	-1	/10=1	 +1)*10		limit=20;
	// p= 21~30	-1	/10=2	 +1)*10		limit=30;
	// p= 31~40	-1	/10=3	 +1)*10		limit=limit;
	int start=0;
	int end=((p-1)/10+1)*10;
	if(p<11){
		start=0;
	}else{
		start=end-10;
		out.print("<a href=list.jsp?page="+(end-10)+">[prev]</a>");
	}
	
	for(int i=start; i<end; i++){
	%>
	<a href="list.jsp?page=<%=i+1%>">[<%=i+1%>]</a>
	<%
	}
	if(end<limit){
	out.print("<a href=list.jsp?page="+(end+1)+">[next]</a>");
	}
	%>
	
	<br>	<br>	<br>	<br>
		<a href="list.jsp?page=1">[1]</a>
		<a href="list.jsp?page=2">[2]</a>
		<a href="list.jsp?page=3">[3]</a>
		<a href="list.jsp?page=4">[4]</a>
		<a href="list.jsp?page=5">[5]</a>
	</center>
<%@ include file="../template/footer.jspf" %>
</body>
</html>












