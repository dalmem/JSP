<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@  taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>아래값들을 2020년05월03일 형식으로 변경해서 출력</h2>
	<c:set var="TIME_A" value="2020-05-03"/>
	<c:set var="TIME_B" value="2020/05/03"/>
	<c:set var="TIME_C" value="2020-05-03 21:30:22"/>
	<c:set var="TIME_D" value="<%= new Date() %>"/>
	<h4>TIME_A</h4>
	<fmt:parseDate var="v01" value="${TIME_A }" pattern="yyyy-MM-dd"/>
	<fmt:formatDate var="v01_1" value="${v01 }" pattern="yyyy년MM월dd일"/>	
	${v01_1 }<br/><hr/>
	<h4>TIME_B</h4>
	<fmt:parseDate var="v02" value="${TIME_B }" pattern="yyyy/MM/dd"/>
	<fmt:formatDate var="v02_1" value="${v02 }" pattern="yyyy년MM월dd일"/>
	${v02_1 }<br/><hr/>
	<h4>TIME_C</h4>
	<fmt:parseDate var="v03" value="${TIME_C }" pattern="yyyy-MM-dd HH:mm:ss"/>
	<fmt:formatDate var="v03_1" value="${v03 }" pattern="yyyy년MM월dd일"/>
	${v03_1 }<br/><hr/>
	<h4>TIME_D</h4>
	<fmt:formatDate var="v04_1" value="${TIME_D }" pattern="yyyy년MM월dd일"/>
	${v04_1 }<br/><hr/>
	<br/>
	
		<input type="date" pattern="yyyy년MM월dd일"/>
</body>
</html>