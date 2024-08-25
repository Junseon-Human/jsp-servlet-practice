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
<h1>게시글 조회</h1>
<form action="BoardServlet" name="frm" method="post">
<input type="hidden" name="command" value="board_write" /> 
<table>
<tr>
<th>작성자</th>
<td>${board.name }</td>
</tr>
<tr>
<th>이메일</th>
<td>${board.email }</td>
</tr>
<tr>
<th>작성일</th>
<td>${board.writedate }</td>
</tr>
<tr>
<th>조회수</th>
<td>${board.readcount }</td>
</tr>
<tr>
<tr>
<th>제목</th>
<td>${board.title }</td>
</tr>
<tr>
<tr>
<th>내용</th>
<td>${board.content }</td>
</tr>
<tr>
</table>
<p></p>
<input type="button" value="게시글 수정" onclick="open_win('BoardServlet?command=board_check_pass_form&num=${board.num}', 'update')" /> 
<input type="button" value="게시글 삭제" onclick="open_win('BoardServlet?command=board_check_pass_form&num=${board.num}', 'delete')" />
<input type="button" value="게시글 목록" onclick="location.href='BoardServlet?command=board_list'" />
<input type="button" value="게시글 등록" onclick="location.href='BoardServlet?command=board_write_form'" />
</form>
</div>
</body>
</html>