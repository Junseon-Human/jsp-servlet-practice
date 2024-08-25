package com.keduit.controller.action;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.keduit.dao.BoardDAO;
import com.keduit.dto.BoardVO;

public class BoardCheckPassAction implements Action {

	//boardCheckPass.jsp 화면에서 입력받은 비밀번호가 Board 테이블에 저장된 값과 일치한지 확인
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String url = "";
		String num = request.getParameter("num");
		String pass = request.getParameter("pass");
		
		BoardDAO bDAO = BoardDAO.getInstance();
		BoardVO bVO = bDAO.selectOne(num);
		
		if(pass.equals(bVO.getPass())) {
			url = "board/checkSuccess.jsp"; //일치할때
		}else {
			url = "board/boardCheckPass.jsp"; //불일치할떄
			request.setAttribute("message", "비밀번호가 일치하지 않습니다");
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}

}
