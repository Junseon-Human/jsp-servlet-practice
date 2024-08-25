package com.keduit.controller.action;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.keduit.dao.BoardDAO;
import com.keduit.dto.BoardVO;

public class BoardViewAction implements Action {

	//boardView.jsp 화면 불러오기
	//조회할 게시글의 벊를 받아와서 select 후 조회수 +1
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String url = "board/boardView.jsp";
		String num = request.getParameter("num");
		BoardDAO bDAO = BoardDAO.getInstance();
		bDAO.updateReadCount(num);
		BoardVO bVO = bDAO.selectOne(num);
		request.setAttribute("board", bVO);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
