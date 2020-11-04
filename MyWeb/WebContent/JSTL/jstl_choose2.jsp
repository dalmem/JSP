<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test="${param.score>=0 and param.score<=100 }">
			<c:choose>
				<c:when test="${param.score >=90 }">
					<c:choose>
						<c:when test="${param.score>=95 }">
						<h2>A+학점 WOW!!!!!!!!!!!!</h2>
						</c:when>
						<c:otherwise>
						<h2>A학점</h2>
						</c:otherwise>
					</c:choose>			
				</c:when>
				<c:when test="${param.score >=80 }">
					<h2>B학점</h2>
				</c:when>
				<c:when test="${param.score >=70 }">
					<h2>C학점</h2>
				</c:when>
				<c:otherwise>
					<h2>F학점!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!</h2>
				</c:otherwise>
			</c:choose>
		</c:when>
		<c:otherwise>
			비정상적인 점수입니다
		</c:otherwise>
	</c:choose>
</body>
</html>