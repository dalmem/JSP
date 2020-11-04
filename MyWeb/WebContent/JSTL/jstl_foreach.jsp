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
	<h3>1~100까지 홀수 합</h3>
	<%
		int sum =0;
	for(int i = 1; i <=100; i+=2){
		sum+=i;
	}
	%>
	결과:<%=sum %>
	<hr/>
	
	<c:set var="total" value="0" />
	<c:forEach var="i" begin="1" end="100" step="2" >
			<c:set var="total" value="${total +i }"/>
			
	</c:forEach>
	결과 : ${total}
	
	<hr/>
	<h2>구구단 3단 출력</h2>
	<c:set var="gugu" value="3"/>
	<c:forEach var="dan" begin="1" end="9" step="1">
		${gugu} x ${dan} = ${gugu*dan }<br/>	
	</c:forEach>
	<hr/>
	<h2>모든 구구단 출력</h2>
	<c:forEach var="gugu" begin="2" end="9" step="1">
		<c:forEach var="dan" begin="1" end="9" step="1">
			${gugu} x ${dan} = ${gugu*dan }<br/>	
		</c:forEach><hr/>
	 </c:forEach>
	 
	 <h2>모든 구구단 출력 (가로)</h2>
	<c:forEach var="gugu" begin="1" end="9" step="1">
		<c:forEach var="dan" begin="2" end="9" step="1">
			 &nbsp;&nbsp; ${dan} x ${gugu} = ${gugu*dan} 	
		</c:forEach><hr/>
	 </c:forEach>
	 
	 <h2>향상된 for문</h2>
	 <%
	 	int[] arr = new int[] {1,2,3,4,5};
	 	for(int i : arr){
	 		out.println(i);	
	 	}
	 
	 
	 %>
	 <hr/>
	 <c:set var="arr2" value="<%=new int[] {1,2,3,4,5} %>"/>
	 
	 <c:forEach var="i" items="${arr2 }" varStatus="s"><!--items가 참조하고 있는 요소의 길이만큼 반복  -->
	 <!-- varStatus는 현재 for의 상태값들을 확인 -->
	 	${s.index }번 인덱스 값  : ${i }<br/>	 
	 </c:forEach>
</body>
</html>