package net.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class LoginForm extends HttpServlet {
	// http://localhost:9090/mvcTest/login.do

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// jsp 페이지 그대로 이동
		//resp.sendRedirect("control/loginForm.jsp");

		resp.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		
		// 현재 페이지에서 발생한 요청(req)/응답(resp) 객체를 가진 상태로 이동 (url=현재페이지 url)
		String view="control/loginForm.jsp";
		RequestDispatcher disp=req.getRequestDispatcher(view);
		disp.forward(req,resp);
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.service(req, resp);
	}

	@Override
	public void destroy() {
		super.destroy();
	}

	@Override
	public void init() throws ServletException {
		super.init();
	}
	
	
	

}
