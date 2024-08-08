<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션의 메소드 활용하기</title>
</head>
<body>
<%
	String id = session.getId();
	long lastTime = session.getLastAccessedTime();
	long createTime = session.getCreationTime();
	long timeUsed = (lastTime - createTime) / 60000;
	int inactive = session.getMaxInactiveInterval() / 60;
	boolean isNew = session.isNew();
%>

<h1>세션 정보 알아보기</h1>
(1) 세션ID 는 [ <%=id %>]<p>
(2) 세션의 마지막 access 타임 [ <%=lastTime %>]<p>
(3) 당신이 웹 사이트에 머문 시간은 [ <%=timeUsed %>]<p>
(4) 세션의 유효시간은 [<%= inactive %>]<p>
(5) 세션이 새로 만들어졌나요? [<%= isNew %>]<p>
(6) 세션의 생성 시간은? [<%= createTime %>]<p>
</body>
</html>