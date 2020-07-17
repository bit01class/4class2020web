<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		if(id.equals("admin")&&pw.equals("1234")){
			out.print("<h2>관리자 로그인중</h2>");
		}else if(id.equals("user1")&&pw.equals("1234")){
			out.print("<h2>user1님 로그인중</h2>");
		}
		
	%>
</body>
</html>







