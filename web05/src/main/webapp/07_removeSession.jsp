<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션에 저장된 특정 객체 삭제하기</title>
</head>
<body>
<h1>세션에 저장된 특정 객체 삭제하기</h1>

<%
// session의 setAttribute() 메소드를 활용하여 세션에 저장
session.setAttribute("s_name1", "저는 세션에 저장된 첫번째 값입니다.");
session.setAttribute("s_name2", "저는 세션에 저장된 두번째 값입니다.");
session.setAttribute("s_name3", "저는 세션에 저장된 세번째 값입니다.");
%>
<h3>세션값 출력하기</h3>
<%
// 세선을 출력해보자.(Enumeration활용)
Enumeration names = session.getAttributeNames();
while (names.hasMoreElements()) {
	String name = names.nextElement().toString();		
	String value = session.getAttribute(name).toString();
	out.println(name + " : " + value + "<br>");
}
%>
<%
session.removeAttribute("s_name3");
out.print("<h3>세션값을 삭제한 후 </h3>");
names = session.getAttributeNames();
while (names.hasMoreElements()) {
	String name = names.nextElement().toString();		
	String value = session.getAttribute(name).toString();
	out.println(name + " : " + value + "<br>");
}

out.print("<h3>세션값을 모두 삭제 후</h3>");

// 설정된 세션을 모두 삭제하기
session.invalidate();

// 세션이 유요한 지를 확인
out.print(request.isRequestedSessionIdValid());
%>

</body>
</html>