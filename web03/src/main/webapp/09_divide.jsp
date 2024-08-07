<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 에러 발생시 처리하는 페이지를 지정 --%>
<%@ page errorPage="08_error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러를 발생시키는 페이지</title>
</head>
<body>
	<h1>에러를 발생시키는 페이지</h1>
	0으로 나누기
	<%-- 강제로 예외를 발생 시킴 --%>
	<%= 2/0 %>
	
</body>
</html>