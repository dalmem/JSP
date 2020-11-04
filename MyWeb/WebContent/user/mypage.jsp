<%@page import="com.myweb.user.model.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>

<%
	if(	session.getAttribute("login") ==null ){
		response.sendRedirect("login.jsp");
	}
	UserVO vo = (UserVO)session.getAttribute("login");
	String id = vo.getId();
	String name = vo.getName();
	
	
%>

<section>
<div align="center">
	<h5><%=name %>(<%=id%>)님이 로그인 중입니다</h5>
	<a href="update.jsp">[정보 수정]</a>
	<a href="delete.jsp">[회원 탈퇴]</a>
</div>
</section>

<%@ include file="../include/footer.jsp"%>