package com.myweb.board.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.myweb.board.model.BoardDAO;
import com.myweb.board.model.BoardVO;

public class ContentServiceImpl implements BoardService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		BoardDAO dao = BoardDAO.getInstance();
		String bno = request.getParameter("bno");
		BoardVO vo =dao.getContent(bno);
		vo.setContent(request.getParameter("upcontent"));
		vo.setTitle(request.getParameter("uptitle"));
		request.setAttribute("content", vo);

	}

}
