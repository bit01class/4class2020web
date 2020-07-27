package com.bit.step02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex05 extends GenericServlet {
	
	private void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
//		res.setStatus(res.SC_METHOD_NOT_ALLOWED);
		res.sendError(res.SC_METHOD_NOT_ALLOWED);
	}
	
	private void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
		String msg=req.getParameter("msg");
		res.setContentType("text/html; charset=utf-8");
		PrintWriter out = res.getWriter();
		out.println("<!doctype html>");
		out.println("<html>");
		out.println("<head><meta charset=\"utf-8\"></head>");
		out.println("<body>");
		out.println("<h1>msg:"+msg+"</h1>");
		out.println("</body>");
		out.println("</html>");
	}

	@Override
	public void service(ServletRequest req, ServletResponse res)
			throws ServletException, IOException {
		
		javax.servlet.http.HttpServletRequest request=(HttpServletRequest) req;
		javax.servlet.http.HttpServletResponse response=(HttpServletResponse) res;
		String method=request.getMethod();
		System.out.println(method);
		if("POST".equals(method)){
			doPost(request,response);
		}else if("GET".equals(method)){
			doGet(request,response);
		}
	}

}






