package com.keduit.controller;

import com.keduit.controller.action.Action;
import com.keduit.controller.action.addEmpAction;
import com.keduit.controller.action.addEmpFormAction;
import com.keduit.controller.action.deleteEmpAction;
import com.keduit.controller.action.empListAction;
import com.keduit.controller.action.loginCheck;
import com.keduit.controller.action.updateEmpAction;
import com.keduit.controller.action.updateEmpFormAction;
import com.keduit.controller.action.viewEmpAction;

//Action 모델들을 관리
public class ActionFactory {

	// 싱글톤
	private ActionFactory() {
	}

	private static ActionFactory instance = new ActionFactory();

	public static ActionFactory getInstance() {
		return instance;
	}

	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActionFactory : " + command);
		if (command.equals("login_check")) {
			action = new loginCheck();
		} else if (command.equals("add_emp_form")) {
			action = new addEmpFormAction();
		} else if (command.equals("add_emp")) {
			action = new addEmpAction();
		} else if (command.equals("emp_view")) {
			action = new viewEmpAction();
		} else if (command.equals("update_emp_form")) {
			action = new updateEmpFormAction();
		} else if (command.equals("update_emp")) {
			action = new updateEmpAction();
		} else if (command.equals("delete_emp")) {
			action = new deleteEmpAction();
		}
		return action;
	}
}
