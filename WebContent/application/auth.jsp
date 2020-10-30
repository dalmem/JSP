<%@page import="java.util.UUID"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	UUID uuid = UUID.randomUUID();

	String[] arr = uuid.toString().split("-");
	
	application.setAttribute("auth", arr[1]);

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>인증페이지</h2>
	<form action="auth_ok.jsp">
		인증문자:<b><i><%=arr[1] %></i></b><br>
		
		인증문자를 입력하세요 <br><input type="text" name="code"><br>
		<input type="submit" value="확인">
	</form>
</body>
</html>