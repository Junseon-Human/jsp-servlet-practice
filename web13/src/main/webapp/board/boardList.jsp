<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
</head>
<link rel="styleSheet" type="text/css" href="css/board.css">
<body>
<div id="wrap">
<h1>게시글 목록</h1>
<table>
<tr>
<td colspan="5" style="border: white; text-align: right">
<a href="BoardServlet?command=board_write_form">게시글 등록</a> <%-- 누르면 boardWrite.jsp 화면으로 이동 --%>
</td>
</tr>
<tr>
<th>번호</th>
<th>제목</th>
<th>작성자</th>
<th>작성일</th>
<th>조회수</th>
</tr>
<%-- boardList 는 리스트이기 때문에 forEach 로 한개씩 꺼내서 적용 --%>
<c:forEach var="board" items="${boardList }">
<tr>
<td>${board.num }</td>
<td><a href="BoardServlet?command=board_view&num=${board.num }">${board.title }</a></td> <%-- 누르면 boardVeiw.jsp 화면으로 이동 --%>
<td>${board.name }</td>
<td><fmt:formatDate value="${board.writedate }"/></td>
<td>${board.readcount }</td>
</tr>
</c:forEach>
</table>
</div>
</body>
</html>