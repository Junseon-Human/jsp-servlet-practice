<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 페이지</title>
<style>
span {
	color: red;
}
</style>
<script type="text/javascript" src="script/member.js"></script>
</head>
<body>
	<h1>회원 정보 입력</h1>
	<form action="join.do" method="post" name="frm" id="reg_frm">
		<label for="name">이름</label><span> * </span> <input type="text"
			name="name" required />
		<p>
			<label for="id">아이디</label><span> * </span> <input type="text"
				id="id" name="userid" required /> <input type="button" id="id"
				value="중복 체크" onclick="idCheck()" /> <input type="hidden" id="id"
				name="reid" size="20" />
		<p>
			<label for="pwd">비밀번호</label><span> * </span> <input type="password"
				name="pwd" required /> <label for="pwd_c"><p></p>비밀번호 확인</label><span>
				* </span> <input type="password" id="pwd_c" required />
		<p>
			<label for="email">이메일</label><span> * </span> <input type="text"
				name="email" id="email" required />
		<p>
			<label for="phone">전화번호</label><span> * </span> <input type="tel"
				name="phone" id="phone" required placeholder="010-1234-5678"
				pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" />
		<p>
			<label for="admin">권한</label><span> * </span> <input type="radio"
				name="admin" value="0" checked /> 일반회원 <label for="admin">권한</label><span></span>
			<input type="radio" name="admin" value="1" checked /> 관리자
		<p>
		<div class="center">
			<input type="submit" value="등록" onclick="return joinCheck()" /> <input
				type="reset" value="취소" />
		</div>
		<hr />
		<p>${message }</p>
	</form>
</body>
</html>