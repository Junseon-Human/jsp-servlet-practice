package com.keduit;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SelectServlet")
public class SelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		String job = request.getParameter("job");
		String[] coffees = request.getParameterValues("interst");

		out.print("직업 : ");
		out.println(job);
		out.print("<br>관심분야 : ");
		if (coffees == null) {
			out.print("관심분야가 없어요");
		} else {
			for (String coffee : coffees) {
				out.println(coffee);
			}
		}
		out.print("<p><a href='javascript:history.go(-1)'>다시입력</a>");
		out.print("</body></html>");
		out.close();
	}

}
