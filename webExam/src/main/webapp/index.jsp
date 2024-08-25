<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<script type="text/javascript" src="script/emp.js"></script>
<style>
*{
text-align:center;}
nav{
height: 50px;}
ul{
    height: 100%;
    display:flex;
    margin: 0;
}
nav ul li{
    text-align: center;
    display:flex;
    align-items: center;
    justify-content: center;
    width: 20%;
    height: 100%;
    border: 1px solid black;
}
li > a{
    text-decoration: none;
}
form{
margin-top: 20px;
margin-left: 550px;
display:none;
}
.a{
display: flex;}
.a div{
width: 150px;
text-align: center;
margin: 5px;
padding: 5px;
border:1px solid black;
}
.top{
width: 340px;
text-align: center;
border:1px solid black;
}
input[type="text"]{
width: 143px;
}
</style>
</head>
<body>
<header>
    <h1>"사원 관리 프로그램 만들기" </h1>
    <br>
    <br>
    <hr>
    <nav>
        <ul>
            <li>${name} </li>
            <li></li>
            <li onclick="loginbar()">로그인</li>
            <li>사원 등록<br>관리자로 로그인 후 사용 가능</li>
            <li>마이페이지<br>로그인 후 사용 가능</li>
        </ul>
    </nav>
    </header>
    <main>
        <form action="login.do" method="post">
        <div class="top">로그인</div>
        <div class="a">
        <div class="b">아이디</div><div><input type="text" name="id"/></div>
        </div>
        <div  class="a">
        <div class="b">비밀번호</div><div><input type="text" name="pwd" /></div>
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