<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL core 사용하기</title>
</head>
<body>
<h1>JSTL core 사용하기</h1>
<c:set var="msg" value="안녕하세요."/>
\${msg } = ${msg }
<hr />
<c:set var="age">25</c:set>
\${age } = ${age }
<hr />
<c:set var="member" value="<%= new com.keduit.MemberBean() %>"/>
<c:set target="${member }" property="name" value="한정교"/>
<c:set target="${member }" property="userid">keduit</c:set>
\${member } = ${member }

<hr />
<c:set var="add" value="${100 + 200 }"/>
<c:set var="flag" value="${100 > 10}"></c:set>
\${add } = ${add }
<hr />
\${flag } = ${flag }
<hr />
</body>
</html>