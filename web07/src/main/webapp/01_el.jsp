<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL(Expression Language)</title>
</head>
<body>
${"안녕하세요~^^"}
<p>
<%= "안녕하세요~^^" %>

<p>
	EL에서의 null 표현 : ${null }	
</p>

<%
	String input = null;
%>
<p>표현식에서의 null : <%= input %></p>
<p>EL에서의 null : ${input}</p>
<p>empty를 사용하면 : ${empty input}</p>
<p>${empty input ? "비어있어요" : input }</p>
<p>정수형 : ${5600 }</p>
<p>실수형 : ${12.5 }</p>
<p>문자열형 : ${"한정교"}</p>
<p>논리형 : ${true }</p>
</body>
</html>