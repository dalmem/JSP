<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/header.jsp"%>



<section><!-- 본문을 의미 -->
	<div align="center">
		<h2>로그인</h2>
		<form action="login_ok.jsp" method="post" name="regform">
			
			<input type="text" name="id" placeholder="아이디 " required><br/><br/>
			<input type="password" name="password" placeholder="비밀번호" required><br/><br/>	
			<input type="submit" value="로그인" class = "btn btn-primary">
			<input type="button" value="취소" class="btn btn-default" onclick="location.href='join.jsp'"><br/><br/>
			<a href = "findpassword.jsp">비밀번호 찾기</a>
			
		</form>
	</div>
</section>


<%@ include file="../include/footer.jsp"%>