<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>라디오버튼과 텍스트 박스 처리하기</title>
</head>
<body>
	<form action="RadioServerlet">
		<label for="gender">성별 : </label>
		<input type="radio" id="gender" name="gender" value="남자" checked> 남자
		<input type="radio" id="gender" name="gender" value="여자"> 여자
		<br>
		<label for="chk_mail">메일 정보 수신 여부 : </label>
		<input type="radio" id="chk_mail" name="chk_mail" value="yes" checked> 수신 동의
		<input type="radio" id="chk_mail" name="chk_mail" value="no" > 수신거부
		<br>
		<label for="content"> 간단한 가입 인사를 입력하세요 : </label>
		<br>
		<textarea rows="3" cols="35" id="content" name="content"></textarea>
		<br>
		<input type="submit" value="전송">
		
	</form>
</body>
</html>