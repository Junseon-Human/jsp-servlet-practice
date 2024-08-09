<%@page import="com.keduit.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="member" class="com.keduit.MemberBean"/>
<%
com.keduit.MemberBean member2 = new MemberBean();
member2.setName(request.getParameter("name"));
member2.setUserid(request.getParameter("name"));
member2.setPwd(request.getParameter("name"));
member2.setNickname(request.getParameter("name"));
%>

<jsp:setProperty property="*" name="member"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member 조회</title>
</head>
<body>
<h1>회원 정보</h1>
이 름 : <jsp:getProperty property="name" name="member"/><p>
아이디 : <jsp:getProperty property="userid" name="member"/><p>
비밀번호 : <jsp:getProperty property="pwd" name="member"/><p>
닉네임 : <jsp:getProperty property="nickname" name="member"/>
</body>
</html>