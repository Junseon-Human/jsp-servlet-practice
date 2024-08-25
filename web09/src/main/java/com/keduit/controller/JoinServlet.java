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

@WebServlet("/join.do")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("member/join.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		int admin = Integer.parseInt(request.getParameter("admin"));
		
		MemberVo mvo = new MemberVo();
		mvo.setName(name);
		mvo.setUserid(userid);
		mvo.setPwd(pwd);
		mvo.setEmail(email);
		mvo.setPhone(phone);
		mvo.setAdmin(admin);
		
		MemberDAO mDAO = MemberDAO.getInstance();
		int result = mDAO.insertMember(mvo);
		HttpSession session = request.getSession();
		if (result == 1) {
			session.setAttribute("userid", mvo.getUserid());
			request.setAttribute("message", "회원가입이 완료되었습니다.");
		} else {
			request.setAttribute("message", "회원가입 실패ㅋ");
		}
		
		request.getRequestDispatcher("member/login.jsp").forward(request, response);
	}

}
