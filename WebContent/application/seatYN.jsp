<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	String[] a = (String[])application.getAttribute("seat");
    	String str = Arrays.toString(a);
    %>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h1><%=str %>예약완료</h1>
		<a href="reverse.jsp">처음으로</a>
</body>
</html>