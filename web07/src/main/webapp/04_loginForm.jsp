<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
<h1>로그인</h1>
<form action="05_login.jsp" method="get">
	아이디 : <input type="text" name="id" value="keduit" />
	비밀번호 : <input type="password" name="pwd" value="12345"/><p>	
	<input type="submit" value="로그인">


좋아하는 계절:
<input type="checkbox" name="season" value="spring" checked/> 봄
<input type="checkbox" name="season" value="summer" checked/> 여름
<input type="checkbox" name="season" value="fall" /> 가을
<input type="checkbox" name="season" value="winter" /> 겨울
</form>
</body>
</html>