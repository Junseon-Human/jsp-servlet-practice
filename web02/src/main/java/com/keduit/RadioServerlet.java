package com.keduit;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/RadioServerlet")
public class RadioServerlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String gender = request.getParameter("gender");
		String chk_mail = request.getParameter("chk_mail");
		String content = request.getParameter("content");
		
		out.println("<html><body><h1>");
		out.println("당신이 입력한 정보 입니다.<hr>");
		out.println("성별 : <b>" + gender + "</b>");
		out.println("<p>메일 수신 여부 <b>: " + chk_mail + "</b>");
//		<pre> : 사용자가 입력한 모든값(줄바꿈, 들여쓰기 등) 을 가져옴
//		pre 태그를 붙이지 않으면 띄어쓰기만 구분하고 줄바꿈, 들여쓰기가 안됨
		out.println("<p>가입 인사 : <pre>" + content + "</pre>");
		out.println("</h1></body></html>");
		out.close();
	}

}
