<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h1>req_quiz02.jsp</h1>
		<h3>다음을 구현하고 a태그 클릭시 req_quiz02_result 에 학생번호를 출력하세요</h3>
		<%for(int i =1; i<=30;i++){%>
			
			<a href="req_quiz02_result.jsp?name=<%=i%><%-- <%= 표현식%> --%>">
			<%=i%>번 학생<br/></a>
		<%}%> 
		
		
		
</body>
</html>