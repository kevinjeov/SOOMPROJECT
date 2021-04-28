package com.Ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.MemberDAO;


@WebServlet("/IdCheckService")
public class IdCheckService extends HttpServlet {
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      System.out.println("서버호출!");
      String id = request.getParameter("id");
      System.out.println("사용자가 입력한 아이디 값 : "+id);
      
      MemberDAO dao = new MemberDAO();
      boolean check = dao.IdCheck(id);
      
      System.out.println("회원가입 가능여부 : "+check);
      
      response.setContentType("text/html;charset=utf-8");
      PrintWriter out = response.getWriter();
      out.print(check);
   }

}