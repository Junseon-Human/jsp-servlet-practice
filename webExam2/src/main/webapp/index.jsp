<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<script type="text/javascript" src="script/emp.js"></script>
</head>
<body>
<main>
        <form action="EmpServlet" method="post" name="frm">
        <input type="hidden" name="command" value="login_check"/>
        <div class="top">로그인</div>
        <div class="a">
        <div class="b">아이디</div><div><input type="text" name="id"/></div>
        </div>
        <div  class="a">
        <div class="b">비밀번호</div><div><input type="text" name="pass" /></div>
        </div>
        <div  class="a">
        <div class="b">레벨</div><div><select name="lev" id="selLev" name="lev">
        <option value="A" >운영자</option>
        <option value="B">사원</option>
        </select>
        </div>
        </div>
        <div class="top"><input type="submit" value="로그인"/> <input type="reset" value="취소"/></div>
        </form>
    </main>
</body>

</html>