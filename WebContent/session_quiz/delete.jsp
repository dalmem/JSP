<%@page import="com.session.User"%>
<%@page import="com.session.UserRL"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 
 	
 	UserRL url = new UserRL();
 	User user = (User)session.getAttribute("login");
 	url.delete(user.getId());
 	session.invalidate();
 	%>
 	<script>
 		alert("회원 탈퇴 성공");
 		location.href="login01.jsp";
 	</script>
 	
 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>