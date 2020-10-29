<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>회원가입 양식</h2>
	<form action="join02.jsp" method="post">
		아이디:<input type="text" name="id" required><br/>
		비밀번호:<input type="password" name="pw" required><br/>
		이름:	<input type="text" name="name" required><br/>
		생년월일:<input type="date" name="bday" required><br/>
			<input type="submit" value="가입"><button onclick="location.href='login01.jsp'">가입취소</button>
	</form>
</body>
</html>