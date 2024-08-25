package com.keduit.controller.action;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardCheckFormAction implements Action {

	//boardCheckPass.jsp 보여주기
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String url = "board/boardCheckPass.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}

}
