<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>


<section>
	<div align="center">
		<form action="findpassword_ok.jsp" method="post">
			비밀번호 찾을 아이디:<input type="text" name="id" placeholder="4자리 이상 입력"><br/>
			<input type="submit" value="확인" class = "btn btn-primary">		
		 
		</form>
	</div>
</section>

<%@ include file="../include/footer.jsp"%>