package com.keduit;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CheckServlet")
public class CheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		String[] items = request.getParameterValues("item");
//		if (items.length < 1) {		// nummpointerException
		if (items == null) {
			out.print("선택한 항목이 없습니다.");
		} else {
			out.print("당신이 선택한 항목입니다.<hr>");
			for (String item : items) {
				out.print(item + " ");
			}
		}
		out.println("<p><a href='javascript:history.go(-1)'>다시입력</a>");
		out.println("</body></html>");
		out.close();
	}

}
