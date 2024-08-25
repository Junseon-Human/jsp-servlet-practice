package com.keduit.controller;

import com.keduit.controller.action.Action;
import com.keduit.controller.action.BoardCheckFormAction;
import com.keduit.controller.action.BoardCheckPassAction;
import com.keduit.controller.action.BoardListAction;
import com.keduit.controller.action.BoardUpdateAction;
import com.keduit.controller.action.BoardUpdateFormAction;
import com.keduit.controller.action.BoardViewAction;
import com.keduit.controller.action.BoardWriteAction;
import com.keduit.controller.action.BoardWriteFormAction;

//Action 모델들을 관리
public class ActionFactory {
	
	//싱글톤
	private ActionFactory() {}
	private static ActionFactory instance = new ActionFactory();
	public static ActionFactory getInstance() {
		return instance;
	}
	
	//요청 파라미터 : command=board_list -> BoardListAction
	//요청 파라미터 : command=board_write_form -> BoardWriteFormAction
	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActionFactory : " + command);
		if(command.equals("board_list")) {
			action = new BoardListAction(); //인터페이스 Action 의 구현클래스 BoardListAction -> boardList.jsp 
		}else if(command.equals("board_write_form")) {
			action = new BoardWriteFormAction(); //인터페이스 Action 의 구현클래스 BoardWriteFormAction -> boardWrite.jsp
		}else if(command.equals("board_write")) {
			action = new BoardWriteAction(); //인터페이스 Action 의 구현클래스 BoardWriteAction -> BoardListAction
		}else if(command.equals("board_view")){
			action = new BoardViewAction(); //인터페이스 Action 의 구현클래스 BoardView -> boardView.jsp
		}else if(command.equals("board_check_pass_form")) {
			action = new BoardCheckFormAction(); //인터페이스 Action 의 구현클래스 BoardCheckFormAction -> boardCheckPass.jsp
		}else if(command.equals("board_check_pass")) {
			action = new BoardCheckPassAction(); //비밀번호 일치 -> checkSuccess.jsp 불일피 -> boardCheckPass.jsp
		}else if(command.equals("board_update_form")) {
			action = new BoardUpdateFormAction(); 
		}else if(command.equals("board_update")) {
			action = new BoardUpdateAction();
		}
		return action;
	}

}
