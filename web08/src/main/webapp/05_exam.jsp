<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 정보 입력 폼</title>
</head>
<body>
<form action="06_exam.jsp">
상품명<input type="text" name="name" value="테레비"/><br>
가격	<input type="text" name="price" value="100000000"/><br>
설명 <textarea rows="15" cols="40" name="description" ></textarea>
<input type="submit" value="전송" />
<input type="reset" value="취소" />
</form>
</body>
</html>