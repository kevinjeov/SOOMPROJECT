package com.Service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.memberDAO;
import com.VO.memberVO;

@WebServlet("/joinService")
public class joinService extends HttpServlet {


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		
		memberVO vo = (memberVO)session.getAttribute("join");
		
		
		memberDAO dao = new memberDAO();
		
		
		int cnt = dao.Join(vo.getM_id(), vo.getM_pw(), vo.getM_name(), vo.getM_age(), vo.getM_gender(), vo.getM_tel(),vo.getM_email(), vo.getM_image());
		
		if(cnt > 0) {
			
			response.sendRedirect("home.jsp");
		}
	}

}
