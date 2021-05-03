package com.Ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/nameSend")
public class nameSend extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("이름 보내기 기능을 수행하겠습니다.");
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		String name = (String) session.getAttribute("name");
		
		System.out.println(name);
		
				
		PrintWriter out = response.getWriter();
		out.println(name);
		
		
		
		
	}

}
