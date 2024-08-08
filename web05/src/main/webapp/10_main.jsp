<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
</head>
<body>
<%
	// 공유된 세션에서 로그인 유저의 값을 확인
	if (session.getAttribute("loginUser") == null) {
		// 로그인 유저의 정보가 없으므로 로그인 화면으로
		response.sendRedirect("08_loginFrom.jsp");
	} else {
		
%>
	<%-- 로그인 유저 정보가 있으므로 로그인 사용자 화면을 구성 --%>
	<%= session.getAttribute("loginUser") %> 님 안녕하세요. <p>
	<form action="11_logout.jsp" method="post">
		<input type="submit" value="로그아웃" />
	</form>
<%
}
%>
</body>
</html>