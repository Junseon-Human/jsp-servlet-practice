<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원의 정보 입력 폼</title>
</head>
<body>
<form action="03_addMember.jsp" method="post">
이름<input type="text" name="name" value="홍길동"/><br>
아이디<input type="text" name="userid" value="hong"/><br>
비밀번호<input type="password" name="pwd" value="1234"/><br>
이메일<input type="text" name="email" value="abc@abc.com"/><br>
전화번호<input type="text" name="phone" value="010-1234-5678"/><br>
등급<input type="radio" name="admin" value="1">관리자
<input type="radio" name="admin" value="0" checked>일반회원
<p>
<input type="submit" value="전송" />
<input type="reset" value="취소" />
</form>
</body>
</html>