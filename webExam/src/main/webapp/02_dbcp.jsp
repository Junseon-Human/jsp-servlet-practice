<%@page import="com.keduit.dao.EmpDAO"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DBCP연동 테스트</title>
</head>
<body>
<%
	EmpDAO memberDAO = EmpDAO.getInstance();
	Connection conn = memberDAO.getConnection();
	out.print("DBCP 연동 성공");
%>
</body>
</html>