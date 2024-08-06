package com.keduit;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/JoinServlet")
public class JoinServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.print("<html><body>"
                + "이름 : <strong>"+request.getParameter("name") + "</strong><br>"
                + "주민등록번호 : <strong>"+request.getParameter("personNum1") +"-"+request.getParameter("personNum2")+ "</strong><br>"
                + "아이디 : <strong>"+request.getParameter("id")+ "</strong><br>"
                + "비밀번호 : <strong> "+request.getParameter("pwd")+ "</strong><br>"
                + "비밀번호 확인 : <strong>"+request.getParameter("pwd2")+ "</strong><br>");
        if(request.getParameter("email1")== "") {
			out.print("이메일 : <br>");
		}else {
		if(request.getParameter("email2") == "") {
			out.print("이메일 : <strong>" + request.getParameter("email1") + "@"+request.getParameter("email3")+ "</strong><br>");
		}else {
			out.print("이메일 : <strong>" + request.getParameter("email1") + "@"+request.getParameter("email2")+ "</strong><br>");
		}
		}
        out.print("우편번호 : <strong>"+ request.getParameter("addrNum")+ "</strong><br>"
                +"주소 : <strong>"+ request.getParameter("addr1") + request.getParameter("addr2")+ "</strong><br>"
                +"핸드폰번호 : <strong>"+request.getParameter("tel")+ "</strong><br>"
                +"직업 : <strong>"+request.getParameter("job")+ "</strong><br>"
                +"관심분야 : <strong>"+Arrays.toString(request.getParameterValues("interest"))+ "</strong><br>");


    }

}
