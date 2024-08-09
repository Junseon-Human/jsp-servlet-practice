<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>
<%-- 태그 라이브러리 사용을 위한 선언 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>로그인 결과</h1>
당신이 입력한 정보입니다(EL 방식).
<hr>
아이디 : ${param.id}
<p></p>
비밀번호 : ${param.pwd}
<p></p>
좋아하는 계절 : 
<c:forEach items="${paramValues.season}" var="season">
	${ season }
</c:forEach>
<hr>
당신이 입력한 정보입니다(고전적인 방식).<p>
아이디 : <%= request.getParameter("id") %>
<p></p>
비밀번호 : <%= request.getParameter("pwd") %>
<p></p>
좋아하는 계절 : 
<%
	String[] seasons = request.getParameterValues("season");
	for (String season : seasons) {
		out.print(season + " ");
	}
%>


</body>
</html>