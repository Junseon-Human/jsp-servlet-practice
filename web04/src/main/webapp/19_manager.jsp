<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
</head>
<body>
<h1>관리자 로그인 성공</h1>
아이디 <%= URLDecoder.decode(request.getParameter("userId"), "UTF-8") %>,
<%= URLDecoder.decode(request.getParameter("userName"), "UTF-8") %>님 환영합니다.
</body>
</html>