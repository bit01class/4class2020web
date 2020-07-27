package com.bit.step02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class Ex04 extends GenericServlet {

	@Override
	public void service(ServletRequest req, ServletResponse res)
			throws ServletException, IOException {
		res.setContentType("text/html; charset=utf-8"); 
		PrintWriter out = res.getWriter();
		out.println("<!doctype html>");
		out.println("<html>");
		out.println("<head><meta charset=\"utf-8\"></head>");
		out.println("<body>");
		out.println("<h1>extends GenericServlet</h1>");
//		out.println("<form action=\"ex05\" method=\"post\">");
		out.println("<form action=\"ex06\" method=\"post\">");
		out.println("<input type=\"text\" name=\"msg\"/>");
		out.println("<button>Àü¼Û</button>");
		out.println("</form>");
		out.println("</body>");
		out.println("</html>");
	}

	

}
