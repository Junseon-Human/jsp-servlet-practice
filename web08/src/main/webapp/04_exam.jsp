<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;

String url = "jdbc:oracle:thin:@localhost:1521:xe";
String uid = "scott";
String pass = "tiger";
String sql = "select * from item";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품정보</title>
</head>
<body>
<table width="800" border="1">
<tr>
	<th>상품제목</th>
	<th>가격</th>
	<th>상품설명</th>
</tr>
<%
try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn = DriverManager.getConnection(url, uid, pass);
	stmt = conn.createStatement();
	rs = stmt.executeQuery(sql);
	while (rs.next()) {
		out.print("<tr>");
		out.print("<td>" + rs.getString("name") + "</td>");
		out.print("<td>" + rs.getInt("price") + "</td>");
		out.print("<td>" + rs.getString("description") + "</td>");
		out.print("</tr>");
	};
} catch (Exception e) {
	e.printStackTrace();
} finally {
	try {
		if (rs != null) {
			rs.close();
		}
		if (stmt != null) {
			rs.close();
		}
		if (conn != null) {
			rs.close();
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
}
%>
</table>
<a href="05_exam.jsp">상품정보 입력하기</a>
</body>
</html>