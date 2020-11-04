package com.myweb.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.myweb.board.service.BoardService;
import com.myweb.board.service.ContentServiceImpl;
import com.myweb.board.service.GetListServiceImpl;
import com.myweb.board.service.RegistServiceImpl;


//1. 글 컨트롤러
@WebServlet("*.board")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public BoardController() {
        super();
 
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		dispatchServlet(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		dispatchServlet(request,response);
	}
	protected void dispatchServlet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
		
		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		String command = uri.substring(conPath.length());
		System.out.println(uri);
		//MVC2에서는 기본적으로 forward이동을 사용하고, 다시 컨트롤러를 태울때 redirect를 사용합니다
		//service 부모타입 선언.
		BoardService service;
		
		
		if(command.equals("/board/list.board")) {
			
			service= new GetListServiceImpl();
			service.execute(request, response);
			
			//목록을 가지고 forward이동
			request.getRequestDispatcher("board_list.jsp").forward(request, response);
			
			
			
		}else if(command.equals("/board/write.board")) {
			
			request.getRequestDispatcher("board_write.jsp").forward(request, response);
			
			
		}else if(command.equals("/board/regist.board")) {
			service = new RegistServiceImpl();
			service.execute(request, response);
	
			response.sendRedirect("list.board");//다시 컨트롤러를 태워보내는 형식
		}else if(command.equals("/board/content.board")) {//글 내용 보기 이동
			service = new ContentServiceImpl();
			service.execute(request, response);
			request.getRequestDispatcher("board_content.jsp").forward(request, response);
		}else if(command.equals("/board/modify.board")) {
			service = new ContentServiceImpl();
			service.execute(request, response);
			/*
			 * 1. ContentServiceImpl() 재활용
			 * 2. 포워드 형식으로 board_modify.jsp로 이동
			 * 3. 화면에서는 태그안의 데이터 값을 출력
			 */
			
		}
	}

}
