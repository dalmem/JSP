<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    
    	Cookie[] arr = request.getCookies();
    	String id = "";
    	if(arr!=null){
    		for(Cookie c : arr){
    			if(c.getName().equals("id_Check"))
    				id = c.getValue();
    		}
    	}
    	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>쿠키연습</h2>
	
	<form action="cookie_login_ok.jsp" method="post">
		아이디:<input type="text" name="id"  value ="<%=id %>" required><br>
		비밀번호:<input type="password" name="pw" required><br>
		<input type="submit" value="로그인">
		<input type="checkbox" name="idCheck" value="y">아이디기억하기
		
	</form>
</body>
</html>