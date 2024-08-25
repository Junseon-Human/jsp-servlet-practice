package com.keduit.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.keduit.dao.MemberDAO;
import com.keduit.dto.MemberVo;

@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "member/login.jsp";
		
		HttpSession session = request.getSession();
		
		if (session.getAttribute("loginUser") != null) {
			url = "main.jsp";
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 로그인 요청 처리
		String url = "member/login.jsp";
		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		MemberDAO mDAO = MemberDAO.getInstance();
		int result = mDAO.userCheck(userid, pwd);
		
		if (result == 1) {
			MemberVo mVO = mDAO.getMember(userid);
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", mVO);
			request.setAttribute("message", "회원 로그인 성공");
			url = "main.jsp";
		} else if (result == 0) {
			request.setAttribute("message", "비밀번호가 틀렸습니다ㅋ");
		} else if (result == -1) {
			request.setAttribute("message", "계정이 없는데요?ㅋ");
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

}
