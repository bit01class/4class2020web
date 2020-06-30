<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>request 내장객체</h1>
	<%
		System.out.println(request.toString());
		out.println(request.getRequestURL());
		out.println("<br>");
		out.println(request.getServerName());
		out.println("<br>");
		out.println(request.getServerPort());
		out.println("<br>");
		out.println(request.getProtocol());
		out.println("<br>");
		out.println(request.getRemoteAddr());
		out.println("<br>");
		out.println(request.getRemotePort());
		out.println("<br>");
		out.println(request.getContextPath());
		out.println("<br>");
		out.println(request.getMethod());
		out.println("<br>");
		out.println(request.getRequestURI());
	%>
</body>
</html>









