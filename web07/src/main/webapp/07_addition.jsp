<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력받은 두 수를 더하기</title>
</head>
<body>
고전적인 방식 :<p>
<%
	String str1 = request.getParameter("num1");
	String str2 = request.getParameter("num2");
	
	int num1 = Integer.parseInt(str1);
	int num2 = Integer.parseInt(str2);
	%>
	<%=num1 %> + <%=num2 %> = <%= num1+num2 %>
	<p>
	<%
	// ==, equals 차이 비교
	if (str1 != null) { %>
		== 연산자 사용 결과 : <%= str1 == "100"%><p><br>
		equals() 사용 결과 : <%= str1.equals("100") %>
		<%} %>
<p>
<hr>
EL 방식 : ${param.num1} + ${param.num2 } = ${param.num1 + param.num2 }
<hr>
== 연산자 사용결과 : ${param.str1 == "100" }
</body>
</html>