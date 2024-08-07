<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<form action="05_login.jsp" method="post">
		<input type="text" name="id" id="userid" placeholder="아이디"><p>
		<input type="password" name="pwd" id="password" placeholder	="비밀번호"><p>
		<input type="submit" value="로그인">
		<input type="reset" value="취소">
	</form>
</body>
</html>