package net.control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Welcome extends HttpServlet {
	// http://localhost:9090/mvcTest/wel.do

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			resp.setCharacterEncoding("text/html; charset=UTF-8");
			PrintWriter out=resp.getWriter();
			
			String htmlstr="";
			htmlstr+="<table border=1>\r\n" + 
					"		<tr>\r\n" + 
					"			<th>떡볶이</th>\r\n" + 
					"			<td>붕어빵</td>\r\n" + 
					"		</tr>\r\n" + 
					"		<tr>\r\n" + 
					"			<th>치킨</th>\r\n" + 
					"			<td>닭꼬치</td>\r\n" + 
					"		</tr>\r\n" + 
					"		<tr>\r\n" + 
					"			<th>햄버거</th>\r\n" + 
					"			<td>타코야끼</td>\r\n" + 
					"		</tr>\r\n" + 
					"	</table>";
			out.println(htmlstr);
			
		}catch(Exception e) {
			System.out.println("Request Failed! "+e);
		}
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}

}