package com.keduit.controller.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.keduit.dao.EmpDAO;

public class deleteEmpAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		EmpDAO eDAO = EmpDAO.getInstance();
		
		String id = request.getParameter("id");
		
		int result = eDAO.deleteEmp(id);
		
		if (result == 1) {
			new empListAction().execute(request, response);
		}
	}

}
