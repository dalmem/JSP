<%@page import="com.myweb.user.model.UserVO"%>
<%@page import="com.myweb.user.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"	%>


<%

	/*
		1.폼데이터를 받습니다.
		2. DAO에 update()메서드 생성, 없데이트 구문을 실행,
		3. 수정 성공시 "회원정보가 수정되었습니다" 출력후에 마이페이지로 이동
		실패시 "회원정보 수정에 실패했습니다" 출력 후 마이페이지로 이동
	*/
	UserDAO dao = UserDAO.getInstance();
	UserVO vo1 = (UserVO)session.getAttribute("login");
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw =request.getParameter("password");
	String name =	request.getParameter("name");
	String email =request.getParameter("email");
	String address =request.getParameter("address");
	if(pw ==null || pw == "") pw = dao.findPw(id);	
	
	UserVO vo = new UserVO(id,pw,name,email,address,null);
	int result = dao.Update(vo);
	System.out.println(vo.toString());
	if(result ==1){
		vo.setPw(null);
		session.setAttribute("login", vo);%>
		<script>
			alert("회원정보가 수정되었습니다");
			location.href="mypage.jsp";
		</script>
	<%}else{%>
		<script>
			alert("회원정보 수정에 실패했습니다");
			location.href="mypage.jsp";
		</script>
	<%}

%>


<%@include file="../include/footer.jsp"	%>