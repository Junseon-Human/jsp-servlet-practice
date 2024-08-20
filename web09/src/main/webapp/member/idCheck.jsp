<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복확인</title>
<script src="script/member.js"></script>
</head>
<body>
<h1>아이디 중복확인</h1>
<form action="idCheck.do" name="frm">
아이디 : <input type="text" name="userid" value="${userid }" />
<input type="submit" value="중복체크" />
<br />
<c:if test="${result == -1 }">
	${userid } 는 사용가능한 아이디입니다.
	<input type="button" value="사용하기" onclick="idOK()" />
</c:if>
<c:if test="${result == 1}">
	${userid } 는 이미 존재하는 아이디 입니다.
	<script type="text/javascript">
		opener.document.frm.userid.value="";
	</script>
</c:if>
</form>
</body>
</html>