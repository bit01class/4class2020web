<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%!
// ����� - main �ۿ� Ŭ���� ��
// �޼���, �Լ��� ����
// �ʵ� ����
int a=4321;

public int func01(){
	System.out.println("func01 run...");
	return 1234;
}
%>

	<h1>��ũ��Ʈ��</h1>
	<%
	// ��ũ��Ʈ�� - main ���
	int a=100;
	int b=20;
	int c=a+b;
	java.util.Date date=new java.util.Date();
	System.out.println(date);
	int d=func01();
	%>
	<%=this.a %>
	<%=this.a %>
	<%=a %>
	<%=a %>
</body>
</html>








