package com.Service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Inter.Command;
import com.VO.memberVO;


@WebServlet("/logoutService")

public class logoutService implements Command {
	public String execute(HttpServletRequest request,HttpServletResponse response) 
			throws ServletException, IOException{
		
		request.setCharacterEncoding("utf-8");
		System.out.println("로그아웃 기능을 수행하겠습니다.");
		

		HttpSession session = request.getSession();
		memberVO vo = (memberVO) session.getAttribute("vo");

		session.removeAttribute("vo");

		 return "main0426.jsp";
	}

}
