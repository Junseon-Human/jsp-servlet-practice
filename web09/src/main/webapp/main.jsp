<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 전용 페이지</title>
</head>
<body>
	<h1>회원 전용 페이지</h1>
	<form action="logout.do">
		<p>안녕하세요. ${loginUser.name }(${loginUser.userid } 님)</p>
		<div>
			<input type="submit" value="로그아웃" /> &nbsp;
			<input type="button" value="회원정보 변경" onclick="location.href='memberUpdate.do?userid=${loginUser.userid}'"/>
		</div>
	</form>

</body>
</html>