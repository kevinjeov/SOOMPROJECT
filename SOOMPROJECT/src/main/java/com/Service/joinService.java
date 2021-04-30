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


public class joinService implements Command {


	public String execute(HttpServletRequest request,HttpServletResponse response) 
			throws ServletException, IOException{
		
		request.setCharacterEncoding("utf-8");
		System.out.println("회원가입기능을 수행하겠습니다.");
		
		
		String m_id = request.getParameter("m_id");
		String m_pw = request.getParameter("m_pw");
		String m_name = request.getParameter("m_name");
		String m_age = request.getParameter("m_age");
		String m_gender = request.getParameter("m_gender");
		String m_tel = request.getParameter("m_tel");
		String m_email = request.getParameter("m_email");
		String m_image = request.getParameter("m_image");
		
		System.out.println(m_id);
		System.out.println(m_pw);
		System.out.println(m_name);
		System.out.println(m_age);
		System.out.println(m_gender);
		System.out.println(m_tel);
		System.out.println(m_email);
		System.out.println(m_image);

		memberDAO dao = new memberDAO();
		int cnt = dao.Join(m_id, m_pw, m_name, m_age, m_gender, m_tel,
				m_email, m_image);

		if (cnt > 0) {// True
			HttpSession session = request.getSession();
			memberVO vo = new memberVO(m_id, m_name, m_age, m_gender, m_tel,
					m_email, m_image);
			session.setAttribute("join_vo", vo);
			System.out.println(vo);
			
		}
		return "login.jsp";
		
		
	}

	
}
