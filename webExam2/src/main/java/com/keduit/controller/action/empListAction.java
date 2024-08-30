package com.keduit.controller.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.keduit.dao.EmpDAO;
import com.keduit.dto.EmpVo;

public class empListAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/employees/empList.jsp";
		EmpDAO eDAO = EmpDAO.getInstance();
		List<EmpVo> eVOList = eDAO.selectAllEmp();
		
		request.setAttribute("eVOList", eVOList);
		request.getRequestDispatcher(url).forward(request, response);
		
	}

}
