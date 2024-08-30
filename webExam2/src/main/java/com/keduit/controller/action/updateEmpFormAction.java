package com.keduit.controller.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.keduit.dao.EmpDAO;
import com.keduit.dto.EmpVo;

public class updateEmpFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		EmpDAO eDAO = EmpDAO.getInstance();

		String id = request.getParameter("id");

		EmpVo eVO = eDAO.selectOne(id);
		request.setAttribute("eVO", eVO);

		request.getRequestDispatcher("/employees/empUpdateForm.jsp").forward(request, response);

	}

}
