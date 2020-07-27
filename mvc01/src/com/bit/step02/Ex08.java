package com.bit.step02;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex08 extends MyServlet2 {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res)
			throws IOException {
		String msg=req.getParameter("msg");
		System.out.println("call GET..."+msg);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res)
			throws IOException {
		String msg=req.getParameter("msg");
		System.out.println("call POST..."+msg);
	}
	
	@Override
	protected void doPut(HttpServletRequest req, HttpServletResponse res)
			throws IOException {
		String msg=req.getParameter("msg");
		System.out.println("call Put..."+msg);
		ServletInputStream is = req.getInputStream();
		InputStreamReader isr = new InputStreamReader(is);
		BufferedReader br=new BufferedReader(isr);
		System.out.println(br.readLine());
	}
	
	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse res)
			throws IOException {
		String msg=req.getParameter("msg");
		System.out.println("call Delete..."+msg);
		BufferedReader br=null;
		br=new BufferedReader(new InputStreamReader(req.getInputStream()));
		System.out.println(br.readLine());
	}
}









