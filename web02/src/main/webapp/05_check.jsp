<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>체크박스</title>
</head>
<body>
	<h2>악세서리</h2>
	관심 항목을 선택하세요.<hr>
	<form action="CheckServlet">
		<input type="checkbox" name="item" value="신발"> 신발
		<input type="checkbox" name="item" value="모자"> 모자
		<input type="checkbox" name="item" value="가방"> 가방
		<input type="checkbox" name="item" value="벨트"> 벨트
		<input type="checkbox" name="item" value="시계"> 시계
		<input type="checkbox" name="item" value="보석"> 보석
		<p>
		<input type="submit" value="전송">
	</form>
</body>
</html>