package com.keduit;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/upload.do")
public class UploeadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String savePath = "upload";
		int uploadFileSizeLimit = 5 * 1024 * 1024;	// 5MB
		String encType = "UTF-8";
		
		ServletContext context = getServletContext();
		String uploadFilePath = context.getRealPath(savePath);
		out.print("서버상의 실제 경로:" + uploadFilePath);
		
		MultipartRequest multi = new MultipartRequest(
				request,
				uploadFilePath,
				uploadFileSizeLimit,
				encType,
				new DefaultFileRenamePolicy()
				);
		String fileName = multi.getFilesystemName("uploadFile");
		if (fileName == null) {
			out.print("파일이 업로드 되지 않음.");
		} else {
			out.print("<hr>");
			out.print("<br>글쓴이 : " + multi.getParameter("name"));
			out.print("<br>제 목 : " + multi.getParameter("title"));
			out.print("<br>파일명 : " + fileName);
			out.print("<br>사진 : " + uploadFilePath + "\\" + fileName + "<br>");
            out.print("<img src='C:\\Users\\Lee\\Downloads\\myProgramming\\myJsp\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\web10\\upload\\se3.png' alt='Image 19'>");
		}
		
	}

}
