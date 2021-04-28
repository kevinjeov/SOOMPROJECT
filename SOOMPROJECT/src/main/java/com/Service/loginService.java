package com.Service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.memberDAO;
import com.Inter.Command;
import com.VO.memberVO;


public class loginService implements Command {
	
	public String execute(HttpServletRequest request,HttpServletResponse response) 
			throws ServletException, IOException{
		
		request.setCharacterEncoding("utf-8");
		System.out.println("로그인기능을 수행하겠습니다.");

		String m_id = request.getParameter("m_id");
		String m_pw = request.getParameter("m_pw");
		
		System.out.println(m_id);
		System.out.println(m_pw);

		memberDAO dao = new memberDAO();
		memberVO vo = dao.Login(m_id, m_pw);

		System.out.println(vo);
		if (vo != null) {// True
			HttpSession session = request.getSession();
			
			session.setAttribute("vo", vo);
			System.out.println(vo);
			
		}
		return "soommain.jsp";
		
		
		
	}

}