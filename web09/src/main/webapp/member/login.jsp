<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<script src="script/member.js" type="text/javascript"></script>
<style>
    label{
    display:inline-block;
    width:50px;
    }
    input[type="submit"],input[type="reset"],input[type="button"]{
    margin-right: 20px;
    }
</style>
</head>
<body>
 <h1>로그인</h1>
    <form action="login.do" method="post" name="frm">
    <div><label for="userid">아이디</label><input type="text" name="userid" id="userid" placeholder="아이디"/></div><br>
    <div><label for="pwd">암 호</label><input type="text" name="pwd" id="pwd" placeholder="비밀번호"/></div><br>
    <input type="submit" value="로그인" onclick="return loginCheck()"/>
    <input type="reset"  value="취소" />
    <input type="button" value="회원가입" onclick="location.href='join.do'"/>
    <hr />
    <p>${message}</p>
    </form>
</body>
</html>