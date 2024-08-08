<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 확인하기</title>
</head>
<body>
<%
String id = (String)session.getAttribute("id");
String pwd = (String)session.getAttribute("pwd");
int age = (Integer)session.getAttribute("age");


%>

	아이디 : <%= id %><p>
	비밀번호 : <%= pwd%><p>
	나이 : <%= age %><p>
	<h1>이름과 세션값 가져오기</h1>
<%
	Enumeration names = session.getAttributeNames();	
	while(names.hasMoreElements()) {
		String name = names.nextElement().toString();		
		String value = session.getAttribute(name).toString();
		out.print(name + " : " + value + "<p>");
	}
%>
</body>
</html>