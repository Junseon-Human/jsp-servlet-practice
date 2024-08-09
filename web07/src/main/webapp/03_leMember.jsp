<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% request.setCharacterEncoding("UTF-8"); %>
 <jsp:useBean id="member" class="com.keduit.MemberBean"/>
 <jsp:setProperty property="*" name="member"/>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보</title>
</head>
<body>
<h1>회원 정보</h1>
이름 : ${member.name } <p></p>
<p>아이디 : ${member.userid }</p>
<p>닉네임 : ${member.nickname }</p>
<p>비밀번호 : ${member.pwd }</p>
</body>
</html>