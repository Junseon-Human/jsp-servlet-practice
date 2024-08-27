<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입창</title>
<script type="text/javascript" src="js/join.js"></script>
<style>
    body{
    line-height: 30px;
    }
    label{
    display:inline-block;
    width:130px;
    }
    input{
    margin-left:10px;
    margin-right:10px;
    }
    span input:first-child{
    margin-left:0px;
    }
    input[type="submit"]{
    margin-left: 230px;
    }
</style>
</head>
<body>
    <form action="JoinServlet" name="info">
    <label for="name">이람</label>
    <span>*
    <input type="text" id="name" name="name">
    </span>
    <br>
    <label for="number">주민등록번호</label>
    <span>*
    <input type="text" id="personNum1" name="personNum1">-<input type="text" id="personNum2" name="personNum2">
    </span>
    <br>
    <label for="id">아이디</label>
    <span>*
    <input type="text" id="id" name="id">
    </span>
    <br>
    <label for="pwd">비밀번호</label>
    <span>*
    <input type="password" id="pwd" name="pwd">
    </span>
    <br>
    <label for="pwd2">비밀번호 확인</label>
    <span>*
    <input type="password" id="pwd2" name="pwd2">
    </span>
    <br>
<label for="email">이메일</label>
    <input type="text" id="email1" name="email1">@<input type="text" id="email2" name="email2">
    <select id="email3" name="email3" size="1">
        <option value="naver.com">naver.com</option>
        <option value="keduit.com">keduit.com</option>
        <option value="daum.net">daum.net</option>
        <option value="nate.com">nate.com</option>
    </select>
    <br>
    <label for="addrNum">우편번호</label>
    <input type="text" id="addrNum" name="addrNum"><br>
    <label for="addr">주소</label>
    <input type="text" id="addr1" name="addr1"><input type="text" id="addr2" name="addr2"><br>
    <label for="tel">핸드폰번호</label>
    <input type="tel" id="tel" name="tel"><br>
    <label for="job">직업</label>
    <select id="job" name="job" size="3"> 
            <option value="컴퓨터/인터넷">컴퓨터/인터넷</option>
            <option value="언론">언론</option>
            <option value="공무원">공무원</option>
            <option value="군인">군인</option>
            <option value="서비스업">서비스업</option>
            <option value="교육">교육</option>
            <option value="학생">학생</option>
        </select>
        <br>
    <label for="chk_mail">메일/SMS 정보 수신</label>
    <input type="radio" id="chk_maul" name="chk_mail" value="yes" checked>수신
    <input type="radio" id="chk_mail" name="chk_mail" value="no">수신 거부
    <br>
    <label for="interest">관심분야</label>
    <input type="checkbox" name="interest" value="생두">생두
    <input type="checkbox" name="interest" value="원두">원두
    <input type="checkbox" name="interest" value="로스팅">로스팅
    <input type="checkbox" name="interest" value="핸드드립">핸드드립
    <input type="checkbox" name="interest" value="에스프레소">에스프레소
    <input type="checkbox" name="interest" value="창업">창업
    <br>
    <input type="submit" class="button"value="회원가입" onclick="return check()">
    <input type="reset" class="button" value="취소">
    </form>
</body>
</html>