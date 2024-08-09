<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String[] movieList = {"미드나잇 인 파리", "인사이드 르윈", "비긴어게인", "아이언맨", "옥보단"};
	pageContext.setAttribute("movies", movieList);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl 조건문 사용하기</title>
</head>
<body>
<c:if test="${param.color == 1 }">
	<h1 style="color:red">빨강</h1>
</c:if>
<c:if test="${param.color == 2 }">
	<h1 style="color:yellow">노랑</h1>
</c:if>
<c:if test="${param.color == 3 }">
	<h1 style="color:green">초록</h1>
</c:if>
<c:choose>
	<c:when test="${param.fruit == 1}">
		<h1 style="color:red">사과</h1>
	</c:when>
	<c:when test="${param.fruit == 2}">
		<h1 style="color:green">메론</h1>
	</c:when>
	<c:when test="${param.fruit == 3}">
		<h1 style="color:yellow">망고</h1>
	</c:when>
	<c:otherwise>
		<h1 style="color:red">딸기</h1>
	</c:otherwise>
</c:choose>
<c:forEach var="item" items="${paramValues.item }" varStatus="status">
	${item } <c:if test="${not status.last}">, </c:if>
</c:forEach>
<p></p>
<c:forEach var="movie" items="${movies }" varStatus="status">
	[${status.index },
	${status.count },
	${movie }]
	<p>
 </c:forEach>
 <p></p>
 <c:forEach var="cnt" begin="1" end="10" step="2" varStatus="status">
 	[${status.index },
 	${status.count },
 	${cnt }]
 </c:forEach>
 
</body>
</html>