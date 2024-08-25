<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보수정 페이지</title>
<style>
span {
	color: red;
}
</style>
<script type="text/javascript" src="script/member.js"></script>
</head>
<body>
	<h1>회원 정보 입력</h1>
	<form action="memberUpdate.do" method="post" name="frm" id="reg_frm">
		<label for="name">이름</label><span> * </span> <input type="text"
			name="name" value="${mVO.name }" readonly />
		<p>
			<label for="id">아이디</label><span> * </span>
			<input type="text" id="id" name="userid" value="${mVO.userid }" readonly />
		<p>
			<label for="pwd">비밀번호</label><span> * </span>
			<input type="password" name="pwd" value="${mVO.pwd }" required />
			<label for="pwd_c">비밀번호 확인</label><span> * </span>
			<input type="password" name="pwd_c" value="${mVO.pwd }" required />
		<p>
			<label for="email">이메일</label><span> * </span>
			<input type="text" name="email" id="email" value="${mVO.email }" required />
		<p>
			<label for="phone">전화번호</label><span> * </span>
			<input type="tel" name="phone" id="phone" value="${mVO.phone }" required
				placeholder="010-1234-5678" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" />
		<p>
			<label for="admin">권한</label><span> * </span>
			<c:choose>
				<c:when test="${mVO.admin==0 }">
				<input type="radio" name="admin" value="0" checked /> 일반회원
				<input type="radio" name="admin" value="1"  /> 관리자
				</c:when>
				<c:otherwise>
				<input type="radio" name="admin" value="0"  /> 일반회원
				<input type="radio" name="admin" value="1" checked /> 관리자
				</c:otherwise>
			</c:choose>
		<p>
		<div class="center">
			<input type="submit" value="수정" onclick="return updateCheck()" />
			<input type="reset" value="취소" />
		</div>
		<hr />
		<p>${message }</p>
	</form>
</body>
</html>