package com.keduit.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.keduit.dao.EmpDAO;
import com.keduit.dto.EmpVO;

/**
 * Servlet implementation class UserUpdataServlet
 */
@WebServlet("/userUpdata.do")
public class UserUpdataServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String pass = request.getParameter("pwd");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String id = request.getParameter("id");
		String url = null;
		EmpVO empVO = new EmpVO();
		empVO.setName(name);
		empVO.setPass(pass);
		empVO.setPhone(phone);
		empVO.setId(id);
		EmpDAO empDAO = EmpDAO.getInstance();
		int result = empDAO.updateUser(empVO);
		HttpSession session = request.getSession();
		if (result == 1) {
			session.setAttribute("name", "정보 변경에 성공했습니다 다시 로그인하세요");
			url = "index.jsp";
		} else {
			session.setAttribute("user", "정보 변경에 실패했습니다.");
		}
		
		request.getRequestDispatcher(url).forward(request, response);
		
	}

}
