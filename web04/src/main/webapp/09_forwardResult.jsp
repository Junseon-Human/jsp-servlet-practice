<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String age = request.getParameter("age");
String name = (String)request.getAttribute("name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward의 결과</title>
</head>
<body bgcolor="pink">
	forward 방식으로 이동된 페이지입니다. - url을 확인하세요
	<p>
	나이 : <%=age %><p>
	이름 : <%=name %><p>
</body>
</html>