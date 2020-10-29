<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--  디자인 문법을 적는 영역-->
<!--  선택자.은 태그의 class에 접근하는 문법-->
<style >
	.form-content{ margin:0 auto; width:200px; }
	.form-group{ text-align:center; width:200px; margin-top:400px; }
	.form-control{ width:100%;}
</style>
</head>
<body>
	<!--  css를 지정하는 방법 3가지, 인라인시트, 내부스타일시트, 외부스타일시트-->
	<!--  내부스타일 시트는 태그에 class속성 이름을 부여하고, head안에서 css문법으로 디자인을 적용.-->
	<section>
		<div class="form-content">
			
			<form action="res_ex02_result.jsp" method="" class="form-group" >
				<span><strong>WELL COME<br></strong></span>
				<input type="text" name="id" placeholder="아이디" class="form-control" required><br>
				<input type="password" name="pw" placeholder="비밀번호" class="form-control" required><br>
				
				 <input type="submit" value="로그인" class="form-control"><br>
				 <input type="submit" value="회원가입" class="form-control"><br>
				 <a href=""><h5>아이디 찾기</h5></a>
				 <a href=""><h6>비밀번호 찾기</h6></a>
			</form>
		</div>
	</section>
	
</body>
</html>