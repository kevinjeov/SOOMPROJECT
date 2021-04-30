package com.Service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.memberDAO;
import com.Inter.Command;
import com.VO.memberVO;


public class updateService implements Command {
	public String execute(HttpServletRequest request,HttpServletResponse response) 
			throws ServletException, IOException{
		System.out.println("회원수정 기능을 수행하겠습니다.");
		request.setCharacterEncoding("euc-kr");

		// 1. 현재 로그인 한 사용자의 이메일 값을 가져오시오.

		HttpSession session = request.getSession();
		memberVO vo = (memberVO) session.getAttribute("vo");
		// 2. 사용자가 입력한 값을 가져오시오.(패스워드, 전화번호, 주소)
		String m_id = vo.getM_id();
		String m_pw = request.getParameter("m_pw");
		String m_tel = request.getParameter("m_tel");
		String m_email = request.getParameter("m_email");
		String m_image = request.getParameter("m_image");

		// 3. JDBC코드를 이용하여 로그인한 이메일의 정보를 변경하시오.

		memberDAO dao = new memberDAO();
		int cnt = dao.Update(m_id, m_pw, m_tel, m_email, m_image);

		if (cnt > 0) {
			memberVO vo_update = new memberVO(m_id, m_tel, m_email, m_image);
			session.setAttribute("vo", vo_update);
			// 4. 변경 후 main.jsp로 이동하시오.
			
		} return "main.jsp";
	}
}
