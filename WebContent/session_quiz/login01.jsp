<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>로그인</h2>
	<form action="login02.jsp" method="post">
		아이디:<input type="text" name="id" required><br/>
		비밀번호:<input type="password" name="pw" required><br/>
		<input type="submit" value="로그인">
		<button onclick="location.href='join01.jsp'">회원가입</button>		
	</form>
	
</body>
</html>