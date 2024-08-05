<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서블릿의 호출(Get/Post)</title>
</head>
<body>
	<form method="get" action="MethodServlet">
		<input type="submit" value="get 방식으로 호출하기">
	</form>
	<p>
	<p>
	<form method="post" action="MethodServlet">
		<input type="submit" value="post 방식으로 호출하기">
	</form>
</body>
</html>