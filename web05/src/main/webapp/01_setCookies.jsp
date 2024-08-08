<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 생성하기</title>
</head>
<body>
<%
// 1. cookie 생성하기
Cookie c = new Cookie("id", "keduit");
// 2. 유효기간 설정하기(초단위로 설정됨)
c.setMaxAge(365*24*60*60);
// 3. 클라이언트에게 쿠키 전송하기
response.addCookie(c);

// 1~3 을 한번에 줄이기
response.addCookie(new Cookie("pwd", "test001"));
response.addCookie(new Cookie("age", "25"));

%>
<h1>쿠키 생성</h1>
</body>
</html>