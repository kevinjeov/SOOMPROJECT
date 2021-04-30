package com.Service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.textDAO;
import com.Inter.Command;
import com.VO.conferenceVO;
import com.VO.memberVO;
import com.VO.textVO;

@WebServlet("/makeMeetingService")
public class makeMeetingService implements Command {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		HttpSession session = request.getSession();
		
		memberVO vo = (memberVO) session.getAttribute("member");

		textVO vo2 = (textVO) session.getAttribute("makemeeting");
		
		conferenceVO vo3 = (conferenceVO) session.getAttribute("makemeeting");

		textDAO dao = new textDAO();

		int cnt = dao.MakeMeeting(vo2.getT_code(), vo.getM_id(), vo3.getC_code(), vo2.getT_time(), vo2.getT_comment());

		if (cnt > 0) {

			response.sendRedirect("home.jsp");
		}
	}
}
