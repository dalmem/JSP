<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%! public int visit = 0; %>
    <% Random rand1 = new Random();
    	int num1 = rand1.nextInt(8)+2;
    %>

	<%= ++visit %>번째 방문자입니다
	<%if(visit ==10){ %>
		<p>당첨되셨습니다</p>
	<%} %>
	<hr/>
	<h1>랜덤구구단 <%= num1%>단</h1>
	<%	out.println("이번에 나온 구구단 "+num1+"단 입니다");%><br>
		<%for(int i =1; i<=9; i++){%>
			<%out.println(num1 +"x"+ i +"="+ num1*i);%><br>
		<%} %>
