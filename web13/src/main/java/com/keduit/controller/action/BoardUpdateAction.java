package com.keduit.controller.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.keduit.dao.BoardDAO;
import com.keduit.dto.BoardVO;

public class BoardUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		BoardVO bVO = new BoardVO();
		bVO.setContent(request.getParameter("content"));
		bVO.setEmail(request.getParameter("email"));
		bVO.setName(request.getParameter("name"));
		bVO.setNum(Integer.parseInt(request.getParameter("num")));
		bVO.setPass(request.getParameter("pass"));
		bVO.setReadcount(Integer.parseInt(request.getParameter("readcount")));
		bVO.setTitle(request.getParameter("title"));
		
		BoardDAO bDAO = BoardDAO.getInstance();
		bDAO.updateBoard(bVO);
		
		new BoardListAction().execute(request, response);
	}

}
