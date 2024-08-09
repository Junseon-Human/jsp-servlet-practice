<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>게시판 글쓰기</h1>
<form action="04_movieWrite.jsp" method="post">
제목 <input type="text" name="name" /><p>
가격 <input type="text" name="price" /><p>																																																																																																				
감독 <input type="text" name="director" /><p>
출연배우 <input type="text" name="actor" /><p>
시놉시스 <textarea name="synopsis" rows="5" cols="30"></textarea><p>
장르 <select name="genre">
	<option value="판타지">판타지</option>
	<option value="로맨스">로맨스</option>
	<option value="스릴러">스릴러</option>
	<option value="미스터리">미스터리</option>
	<option value="액션">액션</option>
	<option value="코미디">코미디</option>
	<option value="애니">애니</option>
</select>
<p>
<input type="submit" value="등록" />
<input type="reset" value="다시작성" />
</form>
</body>
</html>