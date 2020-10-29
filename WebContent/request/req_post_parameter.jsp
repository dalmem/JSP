<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	//post방식은 request객체에서 값을 얻을떄 인코딩형식을 지정합니다.
    	request.setCharacterEncoding("UTF-8");
    	String id = request.getParameter("id");
    	String pw = request.getParameter("pw");
    	String method = request.getMethod();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	id:<%=id %><br/>
	password:<%=pw %><br/>
	요청방식:<%=method %>
</body>
</html>