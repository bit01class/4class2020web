<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>JSTL 반복문</h1>
	<%
		String[] msgs={"java","DB","web","framework"};
		pageContext.setAttribute("msgs", msgs);
		java.util.ArrayList<String> list=null;
		list=new java.util.ArrayList<String>();
		list.add("JAVA");
		list.add("DB");
		list.add("WEB");
		list.add("FRAMEWORK");
		pageContext.setAttribute("alist", list);
		java.util.HashSet<String> set=null;
		set=new java.util.HashSet<String>();
		set.add("JAVA");
		set.add("DB");
		set.add("WEB");
		set.add("FRAMEWORK");
		pageContext.setAttribute("hset", set);
	%>
	<ol>
		<c:forEach items="${msgs }" varStatus="status" var="ele">
			<li>${msgs[status.index] } - ${ele }</li>
		</c:forEach>
	</ol>
	<ol>
		<c:forEach items="${alist }" varStatus="status" var="ele">
			<li>${alist.get(status.index) } - ${ele }</li>
		</c:forEach>
	</ol>
	<ol>
		<c:forEach items="${hset }" var="ele">
			<li>${ele }</li>
		</c:forEach>
	</ol>
</body>
</html>





