package com.keduit.controller.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.keduit.dao.BoardDAO;

public class BoardDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String num = request.getParameter("num");
		BoardDAO bDAO = BoardDAO.getInstance();
		
		bDAO.deleteBoard(num);
		new BoardListAction().execute(request, response);
		
	}

}
