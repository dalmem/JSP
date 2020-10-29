<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
	1.form을 이용해서 post형식으로 이름, 국,영,수 값을 입력받습니다.
	2. req_quiz_result.jsp로 전송
	3. 해당 페이지에서는 평균, 합계를 구해서, 80점 이상 = 고득점, 60이상 = 중간, 60아래 = 저득점 출력.
		
-->
	<form action="req_quiz_result.jsp" method="post">
		
		
			이름 :<input type="text" name="name" required><br/>
			국어점수:<input type="number" name="kor" pattern="[0-9]{2,3}" required><br/>
			영어점수:<input type="number" name="eng" pattern="[0-9]{2,3}" required><br/>
			수학점수:<input type="number" name="math" pattern="[0-9]{2,3}" required><br/>
				<input type="submit" value="입력">
		
	</form>
</body>
</html>