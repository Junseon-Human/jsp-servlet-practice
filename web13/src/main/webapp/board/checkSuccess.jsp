<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 일치시 분기하기</title>
</head>
<body>

<script>
if(window.name == "update"){ //게시글 수정
	window.opener.parent.location.href = "BoardServlet?command=board_update_form&num=${param.num}";
}else if(window.name == "delete"){ //게시글 삭제
	alert("삭제되엇습니다");
	window.opener.parent.location.href = "BoardServlet?command=board_delete&num=${param.num}";
}
window.close();
</script>
</body>
</html>