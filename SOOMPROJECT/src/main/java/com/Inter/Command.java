package com.Inter;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Command {
	// 설계도 : 모든 개발자들이 통일된 메소드, 변수이름, 예외처를 사용하게 하기 위해서
	// 강제설계
	
	public String execute(HttpServletRequest request,HttpServletResponse response) 
			throws ServletException, IOException;
		
}
