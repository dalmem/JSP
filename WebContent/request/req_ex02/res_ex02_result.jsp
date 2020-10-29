<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%


	/*
		아이디,pw 받아서 처리
		아이디가 abc1234, 비밀번호 xxx123이면 로그인 성공 : res_ex02_welcome.jsp 리다이렉트
		아이디가 틀린경우 : res_ex02_id_fail로 리다이렉트
		pw가 틀린경우: res_ex02_pw_fail로 리다이렉트. 각각 결과문구들을 출력.
	*/
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	if(id.equals("abc1234") && pw.equals("xxx123")){
		response.sendRedirect("res_ex02_welcome.jsp");
	}else if(!id.equals("abc1234")&pw.equals("xxx123")){
		response.sendRedirect("res_ex02_id_fail.jsp");
	}else if(id.equals("abc1234")& !pw.equals("xxx123")){
		response.sendRedirect("req_ex02_pw_fail.jsp");
	}else{
		response.sendRedirect("res_ex02_id_fail.jsp");
	}

%>
