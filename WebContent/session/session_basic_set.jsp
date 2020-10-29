<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	/*
		세션은- 쿠키와 마찬가지로 서버와 정보를 유지하기 위한 수단의 내장객체(자동생성)
		setAttribute("이름",값) 으로 저장합니다.	
	*/
	session.setAttribute("user_id", "xxx123");
	session.setAttribute("user_name", "홍길자");
	
	//세션유지시간 변경
	session.setMaxInactiveInterval(3600);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="session_basic_get.jsp">세션값 확인</a>
</body>
</html>