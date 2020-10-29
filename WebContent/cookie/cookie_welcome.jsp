<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	response.setCharacterEncoding("utf-8");
	Cookie[] coo = request.getCookies();
	String str = null;
	if(coo!=null){
		for(int i = 0; i <coo.length;i++){
			if(coo[i].getName().equals("user_id"))
			str =coo[i].getValue();
		
		}}
	if(str == null){
		response.sendRedirect("cookie_login.jsp");
	}
	
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=str %>님 환영합니다
	
</body>
</html>