<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
</head>
<body>
<div id="wrap">
<h1>사원 정보 수정</h1>
<form action="EmpServlet" name="frm" method="post">
    <input type="hidden" name="command" value="update_emp"/>
    <input type="hidden" name="id" value="${eVO.id}" />
    <table>
        <tr>
            <th>아이디</th>
            <td><input type="text" name="id" value="${eVO.id}" readonly/></td>
        </tr>
        <tr>
            <th>비밀번호</th>
            <td><input type="text" name="pass" value="${eVO.pass }" /></td>
        </tr>
        <tr>
            <th>이름</th>
            <td><input type="text" name="name" value="${eVO.name}" /></td>
        </tr>
        <tr>
            <th>권한</th>
            <td><input type="text" name="lev" value="${eVO.lev }" readonly/></td>
        </tr>
        <tr>
            <th>입사일</th>
            <td><input type="text" name="enter" value="${eVO.enter }" readonly/></td>
        </tr>
        <tr>
            <th>성별</th>
            <td><input type="text" name="gender" value="${eVO.gender }" readonly/></td>
        </tr>
        <tr>
            <th>전화번호</th>
            <td><input type="text" name="phone" value="${eVO.phone }"/></td>
        </tr>
    </table>
    <p></p>
    <input type="submit"  value="수정"/>
    <input type="reset" value="취소" />
</form>
</div>
</body>
</html>