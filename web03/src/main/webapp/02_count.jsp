<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	// 선언부에 선언된 변수는 static 변수로 선언됨
	int g_cnt = 0;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	// 스크립트릿 에서 선언된 변수는 지역 변수로 선언됨
	int l_cnt = 0;
	
	out.print("<br> local var : ");
	out.print(++l_cnt);
	
	out.print("<br> golbal var : ");
	out.print(++g_cnt);
%>
</body>
</html>