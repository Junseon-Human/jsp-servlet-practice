package com.keduit.controller.action;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.keduit.dao.BoardDAO;
import com.keduit.dto.BoardVO;

public class BoardListAction implements Action {

	//인터페이스 Action 의 execute() 오버라이딩
	//DAO 에서 받은 쿼리문 결과를 화면(boardList.jsp) 에 보여주는 역할
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String url = "/board/boardList.jsp";
		BoardDAO bDAO = BoardDAO.getInstance();
		List<BoardVO> boardList = bDAO.selectAllBoards();
		
		request.setAttribute("boardList", boardList);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
