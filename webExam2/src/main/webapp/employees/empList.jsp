<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <div id="wrap">
        <h1>게시글 리스트</h1>
        <table>
            <tr>
                <td colspan="7" style="border: while; text-align: right"><a
                    href="EmpServlet?command=add_emp_form">사원 등록</a></td>
            </tr>
            <tr>
                <th>아이디</th>
                <th>비밀번호</th>
                <th>이름</th>
                <th>권한</th>
                <th>입사일</th>
                <th>성별</th>
                <th>전화번호</th>
            </tr>
            <c:forEach var="emp" items="${eVOList}">
                <tr>
                    <td>${emp.id }</td>
                    <td>${emp.pass }</td>
                    <td><a
                        href="EmpServlet?command=emp_view&id=${emp.id }">${emp.name }</a></td>
                    <c:if test="${emp.lev eq 'A' }"><td>관리자</td></c:if>
                    <c:if test="${emp.lev eq 'B' }"><td>사원</td></c:if>
                    <c:if test="${emp.lev eq null }"><td>아무도아니야</td></c:if>
                    <td>${emp.enter }</td>
                    <c:if test="${emp.gender eq '1' }"><td>남자</td></c:if>
                    <c:if test="${emp.gender eq '2' }"><td>여자</td></c:if>
                    <td>${emp.phone }</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>