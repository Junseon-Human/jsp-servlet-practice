<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>id 쿠키 삭제하기</title>
</head>
<body>
<%
	Cookie c = new Cookie("id", "kimjunseon");
	c.setMaxAge(60);
	response.addCookie(c);
	// 쿠키 삭제
	// 기존에 쿠키가 생성되어있을때는 껍데기 쿠키를 하나 만들어준다.
	Cookie c2 = new Cookie("id", "");
	c2.setMaxAge(0);		//쿠키의 유효기간을 만료시킴
	response.addCookie(c2);
%>
<h1>id 쿠키가 삭제되었습니다.</h1>
<a href="02_getCookies.jsp">쿠키를 확인하려면 클릭하세요.</a>	
</body>
</html>