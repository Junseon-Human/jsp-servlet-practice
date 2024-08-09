<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="movie" class="com.keduit.MovieBean"/>
<jsp:setProperty property="*" name="movie"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>영화 정보</h1>
제목 : <jsp:getProperty property="name" name="movie"/><p>
가격 : <jsp:getProperty property="price" name="movie"/><p>
감독 : <jsp:getProperty property="director" name="movie"/><p>
출연배우 : <jsp:getProperty property="actor" name="movie"/><p>
시놉시스 : <jsp:getProperty property="synopsis" name="movie"/><p>
장르 : <jsp:getProperty property="genre" name="movie"/>
</body>
</html>