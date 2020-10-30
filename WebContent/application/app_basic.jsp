<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//application은 session과 사용방법이 거의 동일하며,
	//생명주기가 톰캣을 stop할때 까지 1개 유지가 됩니다.
	
	int total =0;
	
	
	if(session.getAttribute("total")!=null){
		total = (int)session.getAttribute("total");
	}

	total++;
	
	
	
	session.setAttribute("total", total);
%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	값:<%=total %>
</body>
</html>