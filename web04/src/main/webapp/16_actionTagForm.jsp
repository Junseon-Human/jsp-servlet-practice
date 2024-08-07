<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>action tag form</title>
</head>
<body>
<form action="17_actionTagTest.jsp">
	아이디 : <input type="text" name="userId"><p>
	암호 : <input type="password" name="userPwd"><p>
	<input type="radio" name="loginCheck" value="user" checked> 사용자
	<input type="radio" name="loginCheck" value="manager">관리자
	<p>
	<input type="submit" value="로그인">
</form>
</body>
</html>