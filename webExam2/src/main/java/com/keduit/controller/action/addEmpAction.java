package com.keduit.controller.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.keduit.dao.EmpDAO;
import com.keduit.dto.EmpVo;

public class addEmpAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		EmpDAO eDAO = EmpDAO.getInstance();
		EmpVo eVO = new EmpVo();
		
		eVO.setId(request.getParameter("id"));
		eVO.setPass(request.getParameter("pass"));
		eVO.setName(request.getParameter("name"));
		eVO.setLev(request.getParameter("lev"));
		eVO.setGender(request.getParameter("gender"));
		eVO.setPhone(request.getParameter("phone"));
		
		
		int result = eDAO.insertEmp(eVO);
		
		if (result == 1) {
			new empListAction().execute(request, response);
		}
		
	}

}
