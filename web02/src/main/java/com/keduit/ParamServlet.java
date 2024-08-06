package com.keduit;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ParamServlet")
public class ParamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		HttpServletRequest :
//		요청 URL : http://localhost:8080/web02/ParamServlet
//		요청 메소드 : GET
//		요청 파라미터: name=홍길동, age=20
//		HttpServletResponse:
//		응답 상태 코드 : 200 (성공)
//		응답 헤더 : Content-Type, Content-Length 등
//		응답 본문 : 서블릿에서 생성한 HTML, JSON 등
		
		response.setContentType("text/html; charset=UTF-8");
		String id = request.getParameter("id");
		String age = request.getParameter("age");
		PrintWriter out = response.getWriter();
		
		out.println("<html><body><h1>");
		out.println("아이디 : " + id);
		out.println("나이 : " + age);
		out.println("<br><a href='javascript:history.go(-1)'>다시입력</a>");
		out.println("</h1></body></html>");
		
		out.close();
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
