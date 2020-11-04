<%@page import="com.myweb.user.model.UserVO"%>
<%@page import="com.myweb.user.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	UserDAO dao = UserDAO.getInstance();
	String pw = dao.findPw(id);
	
	if(dao.findPw(id)==null){%>
		<script>
			alert("존재하지 않는 아이디 입니다.");
			location.href="join.jsp";
		</script><%
	}else{%>
		<script>
			alert("찾으시는 아이디의 비밀번호는 <%= pw%>입니다");
			location.href="login.jsp";		
		</script>	
		
	<%}
	

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