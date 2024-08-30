package com.keduit.controller.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class addEmpFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/employees/empAddForm.jsp";
		request.getRequestDispatcher(url).forward(request, response);
	}

}
