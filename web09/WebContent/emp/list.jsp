<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*,java.sql.*, com.bit.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%
ArrayList<EmpDto> list=new ArrayList<EmpDto>();
Connection conn=null;
Statement stmt=null;
ResultSet rs=null;
try{
	conn=MyOracle.getConnection();
	stmt=conn.createStatement();
	rs=stmt.executeQuery("select * from emp02");
	while(rs.next()){
		EmpDto bean=new EmpDto();
		bean.setSabun(rs.getInt("sabun"));
		bean.setName(rs.getString("name"));
		bean.setNalja(rs.getDate("nalja"));
		bean.setPay(rs.getInt("pay"));
		list.add(bean);
	}
}finally{
	if(rs!=null)rs.close();
	if(stmt!=null)stmt.close();
	if(conn!=null)conn.close();
}
%>
<body>
	<h1>리스트페이지</h1>
	<table width="800">
		<tr>
			<th>사번</th>
			<th>이름</th>
			<th>날짜</th>
			<th>금액</th>
		</tr>
		<%
		for(EmpDto bean : list){
		%>
		<tr>
			<td><%=bean.getSabun() %></td>
			<td><%=bean.getName() %></td>
			<td><%=bean.getNalja() %></td>
			<td><%=bean.getPay() %></td>
		</tr>
		<%} %>
	</table>
</body>
</html>