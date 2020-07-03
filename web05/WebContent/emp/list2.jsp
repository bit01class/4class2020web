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
	<p align="right"><a href="add.jsp">[입 력]</a></p>
	<table width="95%" border="1" cellspacing="0" align="center">
		<tr>
			<th>사번</th>
			<th>이름</th>
			<th>날짜</th>
			<th>금액</th>
		</tr>
		<%
		int tot=0;
		int p=1;
		String param=request.getParameter("page");
		if(param!=null) p=Integer.parseInt(param);
		
		int startNum=1+(p-1)*10;//	01,11,21,31
		int endNum=10+(p-1)*10; //	10,20,30,40
		String sql="select * from (select rownum as rn,sabun,name,nalja,pay from ";
		sql+=" (select * from emp01 order by sabun desc)) where rn between ";
		sql+=startNum+" and "+endNum;
		
		Class.forName(driver);
		try{
			conn=DriverManager.getConnection(url, user, password);
			stmt=conn.createStatement();
			rs=stmt.executeQuery("select count(*) from emp01");
			if(rs.next())tot=rs.getInt(1);
			//stmt.close();
			//rs.close();
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			while(rs.next()){
		%>
		<tr>
			<td><a href="detail.jsp?idx=<%=rs.getInt("sabun") %>"><%=rs.getInt("sabun") %></a></td>
			<td><a href="detail.jsp?idx=<%=rs.getInt("sabun") %>"><%=rs.getString("name") %></a></td>
			<td><a href="detail.jsp?idx=<%=rs.getInt("sabun") %>"><%=rs.getDate("nalja") %></a></td>
			<td><a href="detail.jsp?idx=<%=rs.getInt("sabun") %>"><%=rs.getInt("pay") %></a></td>
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
	int lang=10;
	int limit=(tot-1)/10+1;
	int start=((p-1)/lang)*lang;
	int end=start+lang;
	if(end>limit) end=limit;
	if(p>=lang+1){
		out.print("<a href=list2.jsp?page="+(start)+">[prev]</a>");
	}
	for(int i=start; i<end; i++){
	%>
	<a href="list2.jsp?page=<%=i+1%>">[<%=i+1%>]</a>
	<%
	}
	if(end<limit){
	out.print("<a href=list2.jsp?page="+(end+1)+">[next]</a>");
	}
	%>
	
	
	</center>
<%@ include file="../template/footer.jspf" %>
</body>
</html>












