<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String nick = request.getParameter("nick");
	String check = request.getParameter("check");
	
	/*
	1.아이디,비번,닉네임을 받음
	2.아이디,비번이이 동일하면 아이디정보, 이름정보를 저장하는 세션 생성
		session_welcome으로 이동해서 id(이름) 님 환영합니다.
	3. 틀리면 로그인 페이지
	*/if(id.equals("aaa")&&pw.equals("123")){
		session.setAttribute("id", id);
		session.setAttribute("name", nick);
		response.sendRedirect("session_welcome.jsp");
		if(check !=null){
			session.setAttribute("check", check);
		}else
			session.removeAttribute("check");
	}else{
	%>
		<script>
			alert("Please Check Your Account");
			location.href="session_login.jsp";//redirect와 같은기능
		</script>
	<%	
		//response.sendRedirect("session_login.jsp");
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>