package com.keduit.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.keduit.controller.action.Action;

/**
 * Servlet implementation class BoardServlet
 */
@WebServlet("/BoardServlet")
public class BoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	//http://localhost:8080/web13/BoardServlet?command=board_list 실행
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getParameter("command");
		System.out.println("BoardServlet에서 요청 처리 : " + command); //테스트용
		
		ActionFactory af = ActionFactory.getInstance();
		Action action = af.getAction(command); //받아온 command 값 전달
		if(action != null) {
			try {
				action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}
