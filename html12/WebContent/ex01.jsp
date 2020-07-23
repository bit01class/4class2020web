<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
System.out.println(request.getMethod()+":ex01.jsp 요청함");
String param1=request.getParameter("name");
String param2=request.getParameter("cnt");
if(param1==null)param1="big";
if(param2==null)param2="4";
int cnt=Integer.parseInt(param2);
for(int i=0; i<cnt; i++){ %>
	<img alt="" src="img/<%=param1 %>0<%=i+1%>.jpg"/>
<%} %>
</body>
</html>








