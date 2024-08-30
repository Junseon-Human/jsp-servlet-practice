<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 등록</title>
</head>
<body>
	<div id="wrap">
		<h1>사원 등록</h1>
		<form action="EmpServlet" name="frm" method="post">
			<input type="hidden" name="command" value="add_emp" />
			<table>
				<tr>
					<th>아이디</th>
					<td><input type="text" name="id" required />* 필수</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="text" name="pass" required />* 필수</td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" name="name" required />* 필수</td>
				</tr>
				<tr>
					<th>권한</th>
					<td><input type="radio" value="A" name="lev" />관리자 <input
						type="radio" value="B" name="lev" checked />사원</td>
				</tr>
				<tr>
					<th>성별</th>
					<td><input type="radio" value="1" name="gender" checked />남자 <input
						type="radio" value="2" name="gender" />여자</td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td><input type="text" name="phone" required />* 필수</td>
				</tr>
			</table>
			<p></p>
			<input type="submit" value="등록" /> <input type="reset" value="취소" />
		</form>
	</div>
</body>
</html>