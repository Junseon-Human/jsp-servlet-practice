package com.keduit.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.keduit.dao.MemberDAO;
import com.keduit.dto.MemberVo;

@WebServlet("/memberUpdate.do")
public class MemberUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userid = request.getParameter("userid");
		MemberDAO mDAO = MemberDAO.getInstance();
		MemberVo mVO = mDAO.getMember(userid);
		request.setAttribute("mVO", mVO);
		request.getRequestDispatcher("member/memberUpdate.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		// form 에서 입력한 회원정보 받아와서 업데이트 하기
		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		int admin = Integer.parseInt( request.getParameter("admin"));
		
		MemberVo mVO = new MemberVo();
		
		mVO.setAdmin(admin);
		mVO.setEmail(email);
		mVO.setUserid(userid);
		mVO.setPwd(pwd);
		mVO.setPhone(phone);
		
		MemberDAO mDAO = MemberDAO.getInstance();
		mDAO.updateMember(mVO);
		
		response.sendRedirect("login.do");
	}

}
