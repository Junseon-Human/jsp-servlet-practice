package com.keduit.controller.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.keduit.dao.EmpDAO;
import com.keduit.dto.EmpVo;

public class viewEmpAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/employees/empView.jsp";
		String id = request.getParameter("id");
		
		EmpDAO eDAO = EmpDAO.getInstance();
		EmpVo eVo = eDAO.selectOne(id);
		
		request.setAttribute("eVO", eVo);
		request.getRequestDispatcher(url).forward(request, response);
	}

}
