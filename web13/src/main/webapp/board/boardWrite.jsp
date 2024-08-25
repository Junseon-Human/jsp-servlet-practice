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
<h1>게시글 등록</h1>
<%-- post 방식은 command 를 직접 보낼수 없어 hidden 타입으로 지정
	submit 히면 BoardServlet 에서 get 방식을 통해 command 값을 보내줌
	BoardWriteAction 에서 여기서 입력받은 값을 Board 테이블에 insert 하여 BoardListAction 에 요청
	BoardListAction 에서 추가된 리스트를 보여준다--%>
<form action="BoardServlet" name="frm" method="post">
<input type="hidden" name="command" value="board_write" /> 
<table>
<tr>
<th>작성자</th>
<td><input type="text" name="name" required="required" /> * 필수</td>
</tr>
<tr>
<th>비밀번호</th>
<td><input type="password" name="pass" required="required" /> * 필수(게시글 수정/삭제시 필요합니다)</td>
</tr>
<tr>
<th>이메일</th>
<td><input type="email" name="email" /></td>
</tr>
<tr>
<th>제목</th>
<td><input type="text" name="title" size="70" required="required" /> * 필수</td>
</tr>
<tr>
<th>내용</th>
<td><textarea name="content" cols="70" rows="15"></textarea></td>
</tr>
</table>
<p></p>
<input type="submit" value="등록" onclick="return_boardCheck()" /> <%-- 유효성체크 --%>
<input type="reset" value="다시작성" />
<input type="button" value="게시글목록" onclick="Location.href='BoardServlet?command=board_list'" /> <%-- boardList.jsp 화면으로 이동 --%>
</form>
</div>
</body>
</html>