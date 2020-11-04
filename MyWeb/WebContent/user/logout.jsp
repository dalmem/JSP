<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//로그아웃%>
	<script>
		alert("정상적으로 로그아웃 되었습니다");
		location.href="<%=request.getContextPath()%>";
	</script><%
	session.invalidate();
	//response.sendRedirect(request.getContextPath());//홈화면으로

%>	