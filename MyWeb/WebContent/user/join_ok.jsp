<%@page import="com.myweb.user.model.UserVO"%>
<%@page import="com.myweb.user.model.UserDAO"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
	request.setCharacterEncoding("utf-8");
	
	String id =request.getParameter("id");
	String pw =request.getParameter("password");	
	String name =request.getParameter("name");
	String email =request.getParameter("email");
	String address =request.getParameter("address");
	
	//1. UserDAO객체 생성
	UserDAO dao = UserDAO.getInstance();
	
	//2. 중복검사 실행
	int result = dao.checkId(id);
	
	//System.out.println(result); result값 확인
		
	if(result ==1){//중복
%>
	<script>
		alert("이미 존재하는 아이디 입니다");
		history.go(-1);//뒤로가기(기록을 남김)
	</script>
<%			
	}else{
		UserVO vo = new UserVO(id, pw, name, email, address, null);
			
		int result2 = dao.join(vo);
		if(result2 ==1){//성공
%>		
	<script>
		alert("가입을 축하합니다");
		location.href="login.jsp";
	</script>
<%
		}else{//실패
%>
			<script>
				alert("가입에 실패했습니다. 다시 시도 해주세요");
				location.href="join.jsp";
			</script>
<%			
		}
	}

%>