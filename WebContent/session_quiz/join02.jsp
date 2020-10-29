<%@page import="com.session.UserRL"%>
<%@page import="com.session.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw= request.getParameter("pw");
	String name = request.getParameter("name");
	String bday = request.getParameter("bday");
	
	/*
	값을 받은 다음 User객체생성하고 사용자의 입력값을 저장한 후에 UserRepository클래스에 저장
	*/
	User user = new User(id,pw,name,bday);
	UserRL url = new UserRL();
	url.add(user);
	//join03페이지로 이동
	response.sendRedirect("join03.jsp");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>