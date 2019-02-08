package net.control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LoginProc extends HttpServlet {
	// http://localhost:9090/mvcTest/login.do

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		process(req,resp);
		
	} // doGet() end
	

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		process(req,resp);
		
	} // doPost() end
	
	
	protected void process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {

			resp.setContentType("text/html;charset=UTF-8");
			req.setCharacterEncoding("UTF-8");
			PrintWriter out=resp.getWriter();
			
			String uid=req.getParameter("uid").trim();
			String upw=req.getParameter("upw").trim();
			
			
			// 다른 페이지에서 동작되도록 scope 설정
			
			// session 객체 선언
			HttpSession session=req.getSession();
			
			// application 객체 선언
			ServletContext application=req.getServletContext();
			
			if(uid.equals("test")&&upw.equals("1234")) {
				
				req.setAttribute("msg","로그인 성공");
				req.setAttribute("img","<img src='control/011.gif'>");
				
				req.setAttribute("r_uid",uid);
				req.setAttribute("r_upw",upw);
				
				session.setAttribute("s_uid",uid);
				session.setAttribute("s_upw",upw);
				
				application.setAttribute("a_uid",uid);
				application.setAttribute("a_upw",upw);
				
			}else {
				
				req.setAttribute("msg","로그인 실패");
				req.setAttribute("img","<img src='011.gif'>");
				
				req.setAttribute("r_uid","guest");
				req.setAttribute("r_upw","guest");
				
				session.setAttribute("s_uid","guest");
				session.setAttribute("s_upw","guest");
				
				application.setAttribute("a_uid","guest");
				application.setAttribute("a_upw","guest");
				
			}
			
			String view="control/loginResult.jsp";
			RequestDispatcher disp=req.getRequestDispatcher(view);
			disp.forward(req,resp);
			
			
			
		}catch (Exception e) {
			System.out.println("Request Failed! "+e);
		}
		
	} // process() end
	
	
}
