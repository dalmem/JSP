<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!public int visit = 0;%>
<%
	/*
	1.정수를 저장하는 list를 생성
	2.1~45까지 랜덤한 번호를 생성하고 리스트에저장
	3.중복되지 않는 숫자로 6개의 번호 저장
	4.화면에 출력
	5. set을 이용해서도 처리
*/
ArrayList<Integer> list = new ArrayList<>();
Random rand = new Random();

a: while (true) {

	for (int i = 0; i < 6; i++) {
		int num = rand.nextInt(45) + 1;

		if (list.contains(num)) {
			i--;
		} else {
			list.add(num);
		}

		if (list.size() == 6)
	break a;
	}
}

Random rand1 = new Random();
int num1 = rand1.nextInt(8) + 2;
HashSet<Integer> set = new HashSet<>();
a: while (true) {

	for (int i = 0; i < 6; i++) {
		int num = rand.nextInt(45) + 1;

		if (set.contains(num)) {
			i--;
		} else {
			set.add(num);
		}

		if (set.size() == 6)
			break a;
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
	<h3>list이용</h3>
	[<%for (int i = 0; i < list.size(); i++) {%>
	<%=list.get(i)%>
	<%}	%>]<br><hr/>
	
	<h3>set이용</h3>
	[<%Iterator<Integer> iter = set.iterator();
		while(iter.hasNext()){
			out.println(iter.next());		
		}%>]
	
	
	<hr />
	<%=++visit%>번째 방문자입니다
	<%if (visit == 10) {%>
	<p>당첨되셨습니다</p>
	<%}%>
	<hr />
	<h1>
		랜덤구구단 	<%=num1%>단
	</h1>
	<%out.println("이번에 나온 구구단은 " + num1 + "단 입니다");	%><br>
	<%for (int i = 1; i <= 9; i++) {%>
	<%out.println(num1 + "x" + i + "=" + num1 * i);	%><br>
	<%}	%>
</body>
</html>