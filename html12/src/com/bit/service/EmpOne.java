package com.bit.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.model.EmpDao;
import com.bit.model.EmpDto;

public class EmpOne extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		int empno=Integer.parseInt(req.getParameter("idx"));
		EmpDao dao=new EmpDao();
		EmpDto bean = dao.getOne(empno);
		resp.setContentType("application/xml; charset=utf-8");
		PrintWriter out = resp.getWriter();
		out.print("<emps>");
		out.print("	<emp>");
		out.print("		<empno>"+bean.getEmpno()+"</empno>");
		out.print("		<ename>"+bean.getEname()+"</ename>");
		out.print("		<job>"+bean.getJob()+"</job>");
		out.print("		<mgr>"+bean.getMgr()+"</mgr>");
		out.print("		<hierdate>"+bean.getHiredate()+"</hierdate>");
		out.print("		<sal>"+bean.getSal()+"</sal>");
		out.print("		<comm>"+bean.getComm()+"</comm>");
		out.print("		<deptno>"+bean.getDeptno()+"</deptno>");
		out.print("	</emp>");
		out.print("</emps>");
	}
}

/*
private int empno;
	 private String ename;
	 private String job;
	 private int mgr;
	 private Date hiredate;
	 private int sal;
	 private int comm;
	 private int deptno;
	 */







