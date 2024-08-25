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

@WebServlet("/userInsert.do")
public class UserInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pass = request.getParameter("pwd");
		String name = request.getParameter("name");
		String lev = request.getParameter("leb");
		String phone = request.getParameter("phone");
		String gender = request.getParameter("gender");
		HttpSession session = request.getSession();
		EmpDAO empDAO = EmpDAO.getInstance();
		EmpVO empVO = new EmpVO();
		empVO.setId(id);
		empVO.setLev(lev);
		empVO.setPass(pass);
		empVO.setGender(gender);
		empVO.setPhone(phone);
		empVO.setName(name);
		
		int result = empDAO.insertUser(empVO);
		if (result == 1) {
			session.setAttribute("clue", "등록에 성공했습니다.");
		} else {
			session.setAttribute("clue", "등록 실패");
		}
		
		request.getRequestDispatcher("employees/user.jsp").forward(request, response);
		
		
	}

}
