<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	
	/*좌석정보를 받습니다
		
		2.좌석정보를 저장할 list생성
		application에서 좌석정보가 존재하면 2번리스트에 저장
		
		좌석정보를 비교해서 중복이 없을때 하나씩 저장해 놓을 사본리스트 생성
		좌석정보와 2번의 리스트를 비교해서 중복된 좌석이 아니라면, 사본리스트에 추가
		
		사본리스트와 좌석정보가 길이가 같다면 중복이 없으므로, 2번의 리스트에 통째로 사본리스트를 추가
		
		application에 같은 이름으로 저장
		
		화면에 예약 성공실패의 결과를 출력		
	*/
	String[] seats = request.getParameterValues("seati");
	List<String> sl = new ArrayList<>();
	List<String> slc = new ArrayList<>();
	System.out.println(application.getAttribute("seat"));
		try{
		if(application.getAttribute("seat")!=null){
		sl = (List<String>)application.getAttribute("seat");}
		
			for(String s : seats){
				if(sl.contains(s)){//포함된 경우
					break;
				}else{
					System.out.println(s);
					slc.add(s);
				}
			}
	
			if(slc.size()==seats.length){//중복이 없는경우
				sl.addAll(slc);
			}
			application.setAttribute("seat", sl);
		}catch(NullPointerException e){%>
			<script>
				alert("좌석을 선택하세요");
				location.href="reverse.jsp";
			</script>
		<%}
			
		%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h2>예약결과</h2>
		예약좌석<%if(seats!=null){for(String s: seats) {%>
		[<%=s %>]<%}%>
		<%=slc.size()==seats.length?"예약성공":"예약실패" %><%} %></b>
		<button type="button" onclick="location.href='reverse.jsp'">다시
			예약하기</button>
	</div>
</body>
</html>


