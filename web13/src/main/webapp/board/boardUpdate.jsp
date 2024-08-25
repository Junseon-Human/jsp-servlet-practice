<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link rel="styleSheet" type="text/css" href="css/board.css">
<script type="text/javascript" src="js/board.js"></script>
</head>
<body>
<div id="wrap">
<h1>게시글 수정</h1>
<form action="BoardServlet" name="frm" method="post">
<input type="hidden" name="command" value="board_update" />
<input type="hidden" name="num" value="${board.num }" />
<input type="hidden" name="readcount" value="${board.readcount }" />
<table>
<tr>
<th>작성자</th>
<td><input type="text" name="name" required="required" value="${board.name }" /> * 필수</td>
</tr>
<tr>
<th>비밀번호</th>
<td><input type="password" name="pass" required="required" /> * 필수(게시글 수정/삭제시 필요합니다)</td>
</tr>
<tr>
<th>이메일</th>
<td><input type="email" name="email" value="${board.email }" /></td>
</tr>
<tr>
<th>제목</th>
<td><input type="text" name="title" size="70" required="required" value="${board.title }" /> * 필수</td>
</tr>
<tr>
<th>내용</th>
<td><textarea name="content" cols="70" rows="15">${board.content }</textarea></td>
</tr>
</table>
<p></p>
<input type="submit" value="수정" onclick="return boardCheck()" /> <%-- 유효성체크 --%>
<input type="reset" value="다시작성" />
<input type="button" value="게시글목록" onclick="Location.href='BoardServlet?command=board_list'" /> <%-- boardList.jsp 화면으로 이동 --%>
</form>
</div>
</body>
</html>