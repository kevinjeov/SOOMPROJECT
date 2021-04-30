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


public class makeMeetingService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		HttpSession session = request.getSession();
		
		memberVO vom = (memberVO) session.getAttribute("member");

		textVO vot = (textVO) session.getAttribute("text");
		
		conferenceVO voc = (conferenceVO) session.getAttribute("conference");

		textDAO dao = new textDAO();

		int cnt = dao.MakeMeeting(vot.getT_code(), vom.getM_id(), voc.getC_code(), 
				vot.getT_time(), vot.getT_comment());

		if (cnt > 0) {

			response.sendRedirect("home.jsp");
		}
		return null;
	}

}
