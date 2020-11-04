<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test="${param.name eq '홍길동' }">
			<h4>홍길동입니다</h4>
		</c:when>
		<c:when test="${param.name eq '이순신' }">
			<h4>이순신입니다.</h4>
		</c:when>
		<c:otherwise>
			<h4>홍길동, 이순신이 아닙니다. ${param.name } 입니다</h4>
		</c:otherwise>
	</c:choose>
	<c:choose>
		<c:when test="${param.age >=20 }">
			<h4>성인입니다</h4>
		</c:when>
		<c:otherwise>
			<h4>미성년입니다</h4>
		</c:otherwise>
	</c:choose>
</body>
</html>