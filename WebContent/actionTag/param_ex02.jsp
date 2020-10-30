<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--param태그는 request.setAttribute()와 기능이 같습니다.  -->
    
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:forward page="param_ex03.jsp">
	<jsp:param value="혼길쟈" name="name"/>
</jsp:forward>