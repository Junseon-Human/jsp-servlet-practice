<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
Connection conn = null;
PreparedStatement pstmt = null;

String url = "jdbc:oracle:thin:@localhost:1521:xe";
String uid = "scott";
String pass = "tiger";
String sql = "insert into item values (?, ?, ?)";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력완료?</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String name = request.getParameter("name");
int price = Integer.parseInt(request.getParameter("price"));
String description = request.getParameter("description");

try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn = DriverManager.getConnection(url,uid,pass);
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setInt(2, price);
	pstmt.setString(3, description);
	pstmt.executeUpdate();
} catch (Exception e) {
	e.printStackTrace();
} finally {
	try {
		if (conn != null) {
			pstmt.close();
		}
		if (pstmt != null) {
			pstmt.close();
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
}
%>
<h3>상품정보 입력이 완료되었습니다.</h3>
<a href="04_exam.jsp">상품정보 보러가기</a>
</body>
</html>