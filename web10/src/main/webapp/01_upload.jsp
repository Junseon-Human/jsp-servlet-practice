<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 업로드</title>
</head>
<body>
<form action="upload.do" method="post" enctype="multipart/form-data">
	글쓴이 : <input type="text" name="name" /><p/>
	제 목 : <input type="text" name="title" /><p/>
	파일 지정하기 : <input type="file" name="uploadFile" /><p/>
	<input type="submit" value="전송" />
</form>
</body>
</html>