package com.Service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.memberDAO;
import com.Inter.Command;

public class deleteService implements Command {
	public String execute(HttpServletRequest request,HttpServletResponse response) 
			throws ServletException, IOException{
		
		System.out.println("회원삭제기능을 수행하겠습니다.");
		request.setCharacterEncoding("utf-8");

		
		String num = request.getParameter("num");
		System.out.println("QueryString을 통해서 넘어온 값 : " + num);

		
		request.setCharacterEncoding("utf-8");
		
		String m_id = num;

		memberDAO dao = new memberDAO();
		int cnt = dao.Delete(m_id);

		//어떤 페이지로 이동할건지 return
	      return "SelectMember.jsp";
	}
}
