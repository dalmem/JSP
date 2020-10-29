<%@page import="java.util.Map.Entry"%>
<%@page import="java.util.Set"%>
<%@page import="com.sun.xml.internal.bind.v2.schemagen.xmlschema.List"%>
<%@page import="org.apache.catalina.ant.ListTask"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//Date
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	String now = sdf.format(date);
	
	//ArrayList
	ArrayList<String> list = new ArrayList<>();
	list.add("홍길동");
	list.add("홍길자");
	
	//HashMap
	HashMap<Integer, String> map = new HashMap<>();
	map.put(1,"홍길동");
	map.put(2,"홍길자");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 표현식과 스트립트릿을 이용해서 map데이터, list데이터를 순서대로 출력.  -->
	<%=now %><br>
	
	<h3>리스트 요소 출력</h3>
	<% for(String name : list) {%>
		<%= name %><br>
	<%	}%>
	
	<%--  <% for(int i = 0; i< list.size(); i++){%>
		<%out.println(list.get(i)+"<br>");%>
	<%} %>--%>
	
	<h3>맵 요소 출력</h3>
	<%	Set<Entry<Integer, String> > iter = map.entrySet();
		for(Entry<Integer, String> i : iter){%>
		<%= i.getKey() %>
		<%= i.getValue() %>
	<%}%>
	
		
	
</body>
</html>