<%@page import="com.myweb.user.model.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"	%>
<%
	//이 페이지에 진입했을 때 비밀번호를 제외한 회원의 정보를 input태그에 처리합니다.
	UserVO info = (UserVO)session.getAttribute("login");
	

	//readonly는 input태그의 일기만 가능하게 하는 속성 
%>

<section>
	<div align="center">
		<h2>회원정보</h2>
		<form action="update_ok.jsp" method="post" name="regform">
			<table>
				<tr>
					<td>아이디  </td>
					<td><input type="text" name="id" value="<%=info.getId()%>" readonly></td>
				</tr>
				<tr>
					<td>비밀번호  </td>
					<td><input type="text" name="password" ></td>
				</tr>	
				<tr>
					<td>비밀번호 확인  </td>
					<td><input type="text" name="pwCheck" ></td>
				</tr>
				<tr>
					<td>이름  </td>
					<td><input type="text" name="name" value="<%=info.getName()%>"></td>
				</tr>
				<tr>
					<td>이메일  </td>
					<td><input type="email" name="email" value="<%=info.getEmail()%>" ></td>
				</tr>	
				<tr>
					<td>주소 </td>
					<td><input type="text" name="address" value="<%=info.getAddress()%>"></td>
				</tr>
			</table><br/>
			<input type="button" value="정보 수정" class="btn btn-default" onclick="check()">
			<input type="button" value="취소" class="btn btn-primary" onclick="history.go(-1)">
		</form>
	</div>
</section>
<script>
	function check(){
			
			//form태그는 유일하게 document.form이름.이름....접근이 가능합니다.
			if(document.regform.id.value.length < 4){
				alert("아이디는 필수 입니다");	
				return;//check() 함수 종료
			}else if(document.regform.password.value.length < 4 & document.regform.password.value.length > 0){
				alert("비밀번호는 4자리 이상입니다");
				return;
			}else if(document.regform.password.value != document.regform.pwCheck.value){
				alert("비밀번호 확인란을 확인하세요");
				return;
			}else if(document.regform.name.value==''){
				alert("이름은 필수 입니다");
				return;
			}else{
				//submit()은 자바스크립트의 서브밋기능
				document.regform.submit();
			}		
	}	
</script>


<%@include file="../include/footer.jsp"	%>