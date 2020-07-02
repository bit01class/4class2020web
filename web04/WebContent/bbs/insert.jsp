<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
// Method -> get 방식의 한글 처리
// server -> server.xml 설정
//<Connector connectionTimeout="20000" port="8080" protocol="HTTP/1.1"....
// add  URIEncoding="EUC-KR" 
//<Connector URIEncoding="EUC-KR" connectionTimeout="20000" port="8080" protocol="HTTP/1.1"
// Method -> Post 방식의 한글처리
// 매 파리미터 파싱전 엔코딩
	request.setCharacterEncoding("EUC-KR");
	String sub=request.getParameter("sub");
	String id=request.getParameter("id");
	String cntnt=request.getParameter("cntnt");
	
	if(sub.isEmpty())sub="제목없음";
	sub=sub.replace("<", "&lt;");
	sub=sub.replace(">", "&gt;");
	sub=sub.replace("--", "­­");
	//sub=sub.replace(" ", "&nbsp;");
	sub=sub.replace("'", "＇");
	
	String sql="insert into bbs01 (num,sub,id,nalja,cntnt) ";
	sql+=" values (bbs01_seq.nextval,'"+sub+"','"+id+"',sysdate,'"+cntnt+"')";
	System.out.println(sql);
	
	String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="scott";
	String password="tiger";
	
	Class.forName(driver);
	
	Connection conn=null;
	Statement stmt=null;
	
	try{
		conn=DriverManager.getConnection(url, user, password);
		stmt=conn.createStatement();
		stmt.executeUpdate(sql);
	}finally{
		if(stmt!=null)stmt.close();
		if(conn!=null)conn.close();
	}
	response.sendRedirect("list.jsp");
%>
</body>
</html>








