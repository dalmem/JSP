<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
		show쿠키가 있다면 쿠키가 가지고 있는 날짜를 출력, 만약에 쿠키가 없으면 쿠키가 없네요 출력
		
	*/
	Cookie[] cook = request.getCookies();
	String str ="쿠.없";
	if(cook != null){
		for(int i = 0; i< cook.length; i++){
			if(cook[i].getName().equals("show")){
				str=cook[i].getValue();
			}
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
	<%=str %>
</body>
</html>