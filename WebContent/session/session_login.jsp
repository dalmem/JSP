<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String id= (String)session.getAttribute("id");
	String check = (String)session.getAttribute("check");
	if(check==null)
		{id="";
		}
		
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>세션 로그인 연습</h2>
	<form action="session_login_ok.jsp" method = "post">
		아이디 : <input type="text" name="id" value="<%=id%>" required><br>
		비밀번호 : <input type="password" name="pw" required><br>
		닉네임 : <input type="text" name="nick"><br>
			<input type="submit" value="로그인"><br>
			<input type="checkbox" name="check" value="y">아이디 기억
	</form>
</body>
</html>