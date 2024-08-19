<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String[] movieList = { "미드나잇 인 파리", "인사이드 르윈", "비긴어게인", "아이언맨", "옥보단" };
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
		<h1 style="color: red">빨강</h1>
	</c:if>
	<c:if test="${param.color == 2 }">
		<h1 style="color: yellow">노랑</h1>
	</c:if>
	<c:if test="${param.color == 3 }">
		<h1 style="color: green">초록</h1>
	</c:if>
	<c:choose>
		<c:when test="${param.fruit == 1}">
			<h1 style="color: red">사과</h1>
		</c:when>
		<c:when test="${param.fruit == 2}">
			<h1 style="color: green">메론</h1>
		</c:when>
		<c:when test="${param.fruit == 3}">
			<h1 style="color: yellow">망고</h1>
		</c:when>
		<c:otherwise>
			<h1 style="color: red">딸기</h1>
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
	<p></p>
	<%-- 문자열을 구분자로 분리하는 forTockens --%>
	<c:forTokens items="서울.인천,대구.부산" delims="," var="city">
 	${city} <br>
	</c:forTokens>
	<hr />
	<c:forTokens items="서울.인천,대구.부산" delims="." var="city">
 	${city }<br>
	</c:forTokens>
	<hr />
	
	<%-- url속성에 지정된 서버에 접속해서 가져온 데이터를 var에 저장하는 import --%>
	<c:import url="http://localhost:8080/web07/01_el.jsp" var="data"/>
	${data }
	
	<%-- 해당 주소의 리소스를 가져오는 url --%>
	<c:url value="images/bg.png" var="data"/>
	<h3>${data }</h3>
	<img src="${data }" alt="마리오" width="150" height="150"/>
	
	<%-- response.sendRedirect()와 같은 역할을 하는 redirect --%>
	<%-- <c:redirect url="12_colorSelectForm.jsp"></c:redirect> --%>
	
	
</body>
</html>