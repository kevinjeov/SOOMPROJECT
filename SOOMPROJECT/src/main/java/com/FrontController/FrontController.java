package com.FrontController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.memberDAO;
import com.Inter.Command;
import com.Service.deleteService;
import com.Service.joinService;
import com.Service.loginService;
import com.Service.logoutService;
import com.VO.memberVO;

/**
 * Servlet implementation class FrontController
 */
@WebServlet("*.do")
public class FrontController extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 디자인패턴 (Design Pattern)
		// 개발자가 프로그램을 만들 때 공통된 문제들을 해결하는데 사용하는 형식화 된 코드
		// 선배 개발자들의 노하우가 담긴 코드/패턴
		// FrontController Pattern
		// 웹 프로젝트 개발을 하다보면 많은 Servlet이 필요
		// Servlet이 많아지는건 서버에 큰 부하
		System.out.println("Front Servlet 파일 호출!");
		request.setCharacterEncoding("utf-8");

		// 1. 현재 요청이 온게 어떤 기능의 요청인지를 파악 (요청이 오는 url을 분석)
		String uri = request.getRequestURI();
		System.out.println("사용자가 요청한 URI : " + uri);
		String path = request.getContextPath();
		System.out.println("현재 프로젝트의 이름 : " + path);

		// substring을 사용하여 문자열을 빼기

		String res_uri = uri.substring(path.length() + 1);
		System.out.println("최종요청가능 : " + res_uri);
		
		// 업캐스팅(upcasting) : 자식클래스가 부모클래스의 모든 특성을 상속받음
		                    // 자식클래스는 부모클래스의 이름으로 생성이 가능
		Command service = null;
		if (res_uri.equals("loginService.do")) {
			service = new loginService();
		}else if (res_uri.equals("joinService.do")) {
			service = new joinService();
		}else if (res_uri.equals("deleteService.do")) {
			service = new deleteService();
		}else if (res_uri.equals("logoutService.do")) {
			service = new logoutService();
		}
		String nextPage = service.execute(request, response);
		
		RequestDispatcher dis = request.getRequestDispatcher(nextPage);
		// 어떤 서버페이지로 현재 request와 response를 갖고 이동할건지 지정
		dis.forward(request, response);
		
		// redirect : 단순히 페이지만 이동
		// dispatcher,forward : 현재 페이지의 request,response를
							 // 이동하는 페이지에 공유
		
		
		// FrontController 의 단점
		// 1. 코드의 집중도가 높아짐
		// 2. 중복코드가 발생
		// 3. 유지보수가 어려움

		// Command패턴 + POJO (Plain Old Java Object) : 객체지향(Java)원리에 따라 개발된 자바파일
		
		//향후 공부방향
	      //Spring -> 전자정부프레임워크
	      //JSP/Servlet(Java) : 정부기관(중앙부처, 공기업 등)
	      //php(C언어), Node.js(JavaScript) : 일반 개발업체 
	}
}
