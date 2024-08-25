package com.keduit.controller.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.keduit.dao.BoardDAO;
import com.keduit.dto.BoardVO;

public class BoardWriteAction implements Action {

	//boardWrite.jsp 화면에서 입력받은 값들을 Board 테이블에 추가하여 BoardListAction 으로 보내줌
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		BoardVO bVO = new BoardVO();
		bVO.setContent(request.getParameter("content"));
		bVO.setEmail(request.getParameter("email"));
		bVO.setName(request.getParameter("name"));
		bVO.setPass(request.getParameter("pass"));
		bVO.setTitle(request.getParameter("title"));
		
		BoardDAO bDAO = BoardDAO.getInstance();
		bDAO.insertBoard(bVO);
		
		new BoardListAction().execute(request, response);

	}

}
