<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="wrap">
<h1>상세 페이지</h1>
<form action="EmpServlet" name="frm" method="post">
    <table>
        <tr>
            <th>아이디</th>
            <td>${eVO.id }</td>
        </tr>
        <tr>
            <th>비밀번호</th>
            <td>${eVO.pass }</td>
        </tr>
        <tr>
            <th>이름</th>
            <td>${eVO.name }</td>
        </tr>
        <tr>
            <th>권한</th>
            <td>${eVO.lev}</td>
        </tr>
        <tr>
            <th>입사일</th>
            <td>${eVO.enter}</td>
        </tr>
        <tr>
            <th>성별</th>
            <td>${eVO.gender }</td>
        </tr>
        <tr>
            <th>전화번호</th>
            <td>${eVO.phone }</td>
        </tr>
    </table>
    <p></p>
    <input type="button" value="정보 수정" onclick="location.href='EmpServlet?command=update_emp_form&id=${eVO.id}'"/>
    <input type="button" value="회원 삭제" onclick="location.href='EmpServlet?command=delete_emp&id=${eVO.id}'"/>
    <input type="button" value="게시글 목록" onclick="history.back()"/>
</form>
</div>
</body>
</html>