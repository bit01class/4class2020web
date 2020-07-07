<%@page import="com.bit.dept.DeptDto"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
		<tr>
			<td align="center" bgcolor="#cccccc">
				<a href="<%=request.getParameter("path") %>index.jsp">[HOME]</a>
				<a href="<%=request.getParameter("path") %>emp/list.jsp">[E M P]</a>
				<a href="<%=request.getParameter("path") %>dept/list.jsp">[DEPT]</a>
				<%
				DeptDto login2=(DeptDto)session.getAttribute("login");
				if(login2.isResult()){ 
				%>
				<a href="<%=request.getParameter("path") %>login/form.jsp">[LOGOUT]</a>
				<%}else{ %>
				<a href="<%=request.getParameter("path") %>login/form.jsp">[LOGIN]</a>
				<%} %>
			</td>
		</tr>
		<tr>
			<td>
				<!-- content start -->