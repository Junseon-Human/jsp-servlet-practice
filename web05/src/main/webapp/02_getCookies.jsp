<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>설정된 모든 쿠키를 가져와 출력하기</title>
</head>
<body>
<h1>클라이언트로부터 얻어온 쿠키</h1>
<%
	// request로 부터 모든 쿠키를 가져오면 배열 형식으로 리턴
	Cookie cookies[] = request.getCookies();
	for (Cookie c : cookies) {
		out.print(c.getName() + " : " + c.getValue() + ", " + c.getMaxAge() + "<p>");
	}
%>
</body>
</html>