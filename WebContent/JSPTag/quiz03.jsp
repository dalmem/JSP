<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! ArrayList<String> list = new ArrayList<>();
	
%>
<% String[] arr = {"어피치","라이언","제이지","무지","프로도","튜브"};
	Random ran = new Random();
	int same =-1;
	String friend = arr[ran.nextInt(6)]; 
	list.add(friend);
	
	for(String n : list){
		if(n.equals(friend)){
			
			same++;
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p><Strong>[<%=friend%>]</Strong>님이 입장<br>
		현재 같은 카카오 프렌즈는 <%=same %>명 입니다.<br>
		
		<h1>현재 구성정보</h1><br/>
		<%if(list.size()>10){
				list.clear();				
			}
			 %>
				
		<%=list.toString() %>	(<%=list.size()%>명 참가중)
			
			
				
			
		
		
	</p>
	
</body>
</html>