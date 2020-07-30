<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table {
	width: 500px;
}
</style>
</head>
<body>
	<h1>EL(Expression Language) 표현식(EL의 문법)</h1>
	<p>표현을 해주는 라이브러리</p>
	<table>
		<tr>
			<th>연산</th>
			<th>java</th>
			<th>el</th>
			<th>el표기</th>
		</tr>
		<tr>
			<td>문자열</td>
			<td><%="출력" %></td>
			<td>${"출력" }</td>
			<td>＄{"출력" }</td>
		</tr>
		<tr>
			<td>숫자</td>
			<td><%=1234.0 %></td>
			<td>${1234.0 }</td>
			<td>＄{1234.0 }</td>
		</tr>
		<tr>
			<td>연산(정수,정수)</td>
			<td><%=4+2 %></td>
			<td>${4+2 }</td>
			<td>＄{4+2 }</td>
		</tr>
		<tr>
			<td>연산(실수,정수)</td>
			<td><%=4.0*2 %></td>
			<td>${4.0*2 }</td>
			<td>＄{4.0*2 }</td>
		</tr>
		<tr>
			<td>연산(나누기1)</td>
			<td><%=4/2 %></td>
			<td>${4/2 }</td>
			<td>＄{4/2 }</td>
		</tr>
		<tr>
			<td>연산(나누기2)</td>
			<td><%=5/2 %></td>
			<td>${5/2 }</td>
			<td>＄{5/2 }</td>
		</tr>
		<tr>
			<td>연산(나누기3)</td>
			<td><%=5/2 %></td>
			<td>${5 div 2 }</td>
			<td>＄{5 div 2 }</td>
		</tr>
		<tr>
			<td>연산(나머지1)</td>
			<td><%=5%2 %></td>
			<td>${5%2 }</td>
			<td>＄{5%2 }</td>
		</tr>
		<tr>
			<td>연산(나머지2)</td>
			<td><%=5%2 %></td>
			<td>${5 mod 2 }</td>
			<td>＄{5 mod 2 }</td>
		</tr>
		<tr>
			<td>비교1</td>
			<td><%=5==5 %></td>
			<td>${5==5 }</td>
			<td>＄{5 == 5 }</td>
		</tr>
		<tr>
			<td>비교2</td>
			<td><%=5==5 %></td>
			<td>${5 eq 5 }</td>
			<td>＄{5 eq 5 }</td>
		</tr>
		<tr>
			<td>비교3</td>
			<td><%=5>3 %></td>
			<td>${5>3 }</td>
			<td>＄{5>3 }</td>
		</tr>
		<tr>
			<td>비교4</td>
			<td><%=5>3 %></td>
			<td>${5 gt 3 }</td>
			<td>＄{5 gt 3 }</td>
		</tr>
		<tr>
			<td>비교5</td>
			<td><%=5<3 %></td>
			<td>${5<3 }</td>
			<td>＄{5<3 }</td>
		</tr>
		<tr>
			<td>비교6</td>
			<td><%=5<3 %></td>
			<td>${5 lt 3 }</td>
			<td>＄{5 lt 3 }</td>
		</tr>
		<tr>
			<td>비교7</td>
			<td><%=5>=3 %></td>
			<td>${5 ge 3 }</td>
			<td>＄{5 ge 3 }</td>
		</tr>
		<tr>
			<td>비교8</td>
			<td><%=5<=3 %></td>
			<td>${5 le 3 }</td>
			<td>＄{5 le 3 }</td>
		</tr>
		<tr>
			<td>자료형</td>
			<td><%='a' %></td>
			<td>${'a' }</td>
			<td>＄{'a' }</td>
		</tr>
		<tr>
			<td>자료형</td>
			<td><%=true %></td>
			<td>${true }</td>
			<td>＄{true }</td>
		</tr>
		<tr>
		<% String msg=null; %>
			<td>자료형</td>
			<td><%=msg %></td>
			<td>${null }</td>
			<td>＄{null }</td>
		</tr>
	</table>
</body>
</html>







