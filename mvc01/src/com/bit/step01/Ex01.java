package com.bit.step01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class Ex01 implements Servlet {
	ServletConfig config;

	public void init(ServletConfig arg0) throws ServletException {
		config=arg0;
		System.out.println("init..."+this.hashCode());
	}
	public void destroy() {
		System.out.println("destroy..."+this.hashCode());
	}
	public void service(ServletRequest req, ServletResponse resp)
			throws ServletException, IOException {
		System.out.println("service..."+this.hashCode());
		
		PrintWriter out = resp.getWriter();
		out.println("<h1>hello world</h1>");
		
	}
	public ServletConfig getServletConfig() {
		System.out.println("config...");
		return this.config;
	}
	public String getServletInfo() {
		System.out.println("info...");
		return "이 서블릿은 누가 언제 만들었고....";
	}
}
