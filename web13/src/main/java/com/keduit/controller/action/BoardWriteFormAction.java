package com.keduit.controller.action;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardWriteFormAction implements Action {

	//인터페이스 Action 의 execute() 오버라이딩
	//boardWrite.jsp 를 보여주는 역할
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "board/boardWrite.jsp";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}

}
