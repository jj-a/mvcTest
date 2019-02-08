package net.control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class LoginProc_v1 extends HttpServlet {
	// http://localhost:9090/mvcTest/login.do

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {

			resp.setContentType("text/html;charset=UTF-8");
			resp.setCharacterEncoding("UTF-8");
			PrintWriter out=resp.getWriter();
			
			String uid=req.getParameter("uid").trim();
			String upw=req.getParameter("upw").trim();
			
			String htmlstr="";
			
			htmlstr+="	<table border=1>" + 
					"		<tr>" + 
					"			<td colspan=2>로그인 결과</td>" + 
					"		</tr>" + 
					"		<tr>" + 
					"			<td>ID</td>" + 
					"			<td>"+uid+"</td>" + 
					"		</tr>" + 
					"		<tr>" + 
					"			<td>PASSWORD</td>" + 
					"			<td>"+upw+"</td>" + 
					"		</tr>" + 
					"	</table>";

			out.println(htmlstr);
			
			
		}catch (Exception e) {
			System.out.println("Request Failed! "+e);
		}
		
		
	}
	

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		

		try {

			resp.setContentType("text/html;charset=UTF-8");
			resp.setCharacterEncoding("UTF-8");
			PrintWriter out=resp.getWriter();
			
			String uid=req.getParameter("uid").trim();
			String upw=req.getParameter("upw").trim();
			
			String htmlstr="";
			
			htmlstr+="	<table border=1>" + 
					"		<tr>" + 
					"			<td colspan=2>로그인 결과</td>" + 
					"		</tr>" + 
					"		<tr>" + 
					"			<td>ID</td>" + 
					"			<td>"+uid+"</td>" + 
					"		</tr>" + 
					"		<tr>" + 
					"			<td>PASSWORD</td>" + 
					"			<td>"+upw+"</td>" + 
					"		</tr>" + 
					"	</table>";

			out.println(htmlstr);
			
			
		}catch (Exception e) {
			System.out.println("Request Failed! "+e);
		}
		
		
	}
	
	


}
