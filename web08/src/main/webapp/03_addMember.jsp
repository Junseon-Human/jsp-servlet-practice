<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
Connection conn = null;
PreparedStatement pstmt = null;

String url = "jdbc:oracle:thin:@localhost:1521:xe";
String uid = "scott";
String pass = "tiger";
String sql = "insert into member values (?, ?, ?, ?, ?, ?)";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String name = request.getParameter("name");
String userid = request.getParameter("userid");
String pwd = request.getParameter("pwd");
String email = request.getParameter("email");
String phone = request.getParameter("phone");
int admin = Integer.parseInt(request.getParameter("admin"));

try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn = DriverManager.getConnection(url,uid,pass);
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setString(2, userid);
	pstmt.setString(3, pwd);
	pstmt.setString(4, email);
	pstmt.setString(5, phone);
	pstmt.setInt(6, admin);
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
<h3>회원가입 성공</h3>
<a href="01_allMember.jsp">회원 정보 조회하기</a>
</body>
</html>