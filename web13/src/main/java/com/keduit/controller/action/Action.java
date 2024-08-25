package com.keduit.controller.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//모든 Action 객체가 구현해야 하는 인터페이스. 일반적으로 실행할 작업에 대한 execute() 메서드를 선언
public interface Action {

	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
