package com.keduit.controller.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.keduit.dao.EmpDAO;

public class loginCheck implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		String lev = request.getParameter("lev");
		
		EmpDAO eDAO = EmpDAO.getInstance();
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		int result = eDAO.userCheck(id, pass, lev);
		if (result == 1) {
//			out.println("<script>alert('로그인 성공!');</script>"); 
//			out.close();
			new empListAction().execute(request, response);
		} else {
//			out.println("<script>alert('로그인 실패');</script>");
//			out.close();
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		
	}

}
