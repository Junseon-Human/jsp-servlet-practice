<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 현재 페이지가 에러를 처리하는 페이지임을 선언 -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러 페이지</title>
</head>
<body>
	다음과 같은 에러가 발생했습니다.
	<%= exception.getMessage() %>
</body>
</html>