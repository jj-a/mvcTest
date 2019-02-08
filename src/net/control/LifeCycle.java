package net.control;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LifeCycle extends HttpServlet {
	// http://localhost:9090/mvcTest/life.do

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Get 방식 Request가 발생될 때 호출
		System.out.println("Called doGet()");
		super.doGet(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Post 방식 Request가 발생될 때 호출
		System.out.println("Called doPost()");
		super.doPost(req, resp);
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Request가 발생될 때 호출 (Get/Post 구분)
		System.out.println("Called service()");
		super.service(req, resp);
	}

	@Override
	public void destroy() {
		// 서버 종료 시 1회 호출
		System.out.println("Called destroy()");
		super.destroy();
	}

	@Override
	public void init() throws ServletException {
		// Servlet 실행 시 1회 호출
		System.out.println("Called init()");
		super.init();
	}
	
	
	
}
