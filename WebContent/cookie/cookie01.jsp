<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
		1. Date클래스를 이용해서 xxxx년xx월xx일 형태로 날짜를 생성
		쿠키이름은 show쿠키로 생성
		
	*/
	Date date = new Date();

	SimpleDateFormat sdf = new SimpleDateFormat("YYYY년MM월dd일");
		String str = sdf.format(date);
		
		
	Cookie cookie = new Cookie("show", str);
	
	cookie.setMaxAge(3);
	
	response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="cookie02.jsp">쿠키실행</a>
	
</body>
</html>