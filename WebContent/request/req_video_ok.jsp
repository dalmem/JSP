<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%	String name = request.getParameter("name"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<div align="center">
		<h2>강의영상</h2>
		<hr>
		<% if(name==null){%> 
			<p>잘못된 접근입니다.</p>
		<%} %>
		<%if(name.equals("java")){ %>
		<p>자바 수업 소개</p>
		<iframe width="560" height="315" src="https://www.youtube.com/embed/L0a6N-rj-CI" 
		frameborder="1" allow="accelerometer; clipboard-write; encrypted-media;
		 gyroscope; picture-in-picture" allowfullscreen></iframe>
		<%}else if(name.equals("jscript")){ %>
		<p>자바스크립트 수업 소개</p>
		<iframe width="560" height="315" src="https://www.youtube.com/embed/nOTpuof2YG8" 
		frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; 
		gyroscope; picture-in-picture" allowfullscreen></iframe>
		<%}else if(name.equals("oracle")){ %>
		<p>오라클 설치과정</p>
		<iframe width="560" height="315" src="https://www.youtube.com/embed/i3ZqfgXBryg" 
		frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; 
		gyroscope; picture-in-picture" allowfullscreen></iframe>
		<%}else{ %>
			<p>잘못된 접근 입니다.</p>
		<%} %>
	</div>
	
	
</body>
</html>