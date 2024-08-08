<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 입력</title>
<style>
	span { color : red;}
</style>
</head>
<body>
<form action="02_registerCheck.jsp" method="post">
	<label for="name">이름</label><span> * </span>
	<input type="text" name="name" value="한정교" required /><p>
	<label for="id">아이디</label><span> * </span>
	<input type="text" id="id" name="userid" value="keduit" required/>
	<p>
	<label for="pwd">비밀번호</label><span> * </span>
	<input type="password" name="pwd" value="12345" required />
	<p>
	<label for="nickname">닉네임</label><span> * </span>
	<input type="text" name="nickname" value="korea" required />
	<p>
	<input type="submit" value="등록"/>
	<input type="reset" value="취소"/>
</form>
<%

%>
</body>
</html>