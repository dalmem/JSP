<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	올바른 인증값을 적은경우는 reverse.jsp이동
	올바른 인증값을 적은 경우는 authYN이름으로 인증성공 세션을 생성,
	올바르지 않은 경우 다시 인증페이지로 이동
		
	*/
	String auth = (String)application.getAttribute("auth");
	String code = request.getParameter("code");
	
	if(auth.equals(code)){
		application.setAttribute("authYN", "Y");
		response.sendRedirect("reverse.jsp");
	}else{
		
		response.sendRedirect("auth.jsp");
	}

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