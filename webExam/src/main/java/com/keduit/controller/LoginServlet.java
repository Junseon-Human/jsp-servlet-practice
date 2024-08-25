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

@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "";
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String lev = request.getParameter("lev");
		String phone = request.getParameter("phone");
		
		EmpDAO empDAO = EmpDAO.getInstance();
		String name = empDAO.getName(id);
		int result = empDAO.userCheck(id, pwd, lev);
		EmpVO empVO = empDAO.getEmpVO(id);
		HttpSession session = request.getSession();
		if (result == 1 && lev.equals("A")) {
			session.setAttribute("user", name + "님 반가워요");
			session.setAttribute("lev", lev);
			session.setAttribute("name", empVO.getName());
			session.setAttribute("pass", empVO.getPass());
			session.setAttribute("id", empVO.getId());
			url = "employees/user.jsp";
		} else if (result == 1 && lev.equals("B")) {
			session.setAttribute("user", name + "님 반가워요");
			session.setAttribute("lev", lev);
			session.setAttribute("name", empVO.getName());
			session.setAttribute("pass", empVO.getPass());
			session.setAttribute("id", empVO.getId());
			url = "employees/user.jsp";
		} else if (result == 0) {
			session.setAttribute("user", "비밀번호 틀림");
			url = "index.jsp";
		} else {
			session.setAttribute("user", "계정이 없어요우");
			url = "index.jsp";
		}
		
		request.getRequestDispatcher(url).forward(request, response);
		
	}

}
