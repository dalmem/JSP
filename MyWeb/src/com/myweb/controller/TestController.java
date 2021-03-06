package com.myweb.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//1. 확장자 패턴으로 변경 *.xxx로 맵핑을 변경
@WebServlet("*.test")
public class TestController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public TestController() {
        super();
  
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		dispatchServlet(request,response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		dispatchServlet(request,response);
		
	}
	
	protected void dispatchServlet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");//한글처리
		
		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		String command = uri.substring(conPath.length());//uri에서  패스경로를 뺌
		System.out.println(command);
		
		if (command.equals("/controller/login.test")) {
			//로그인 처리 			
		}else if (command.equals("/controller/logout.test")) {
			//로그아웃 처리
			System.out.println("로그아웃");
		}
	}

}
