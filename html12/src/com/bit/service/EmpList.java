package com.bit.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.model.EmpDao;
import com.bit.model.EmpDto;

public class EmpList extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		EmpDao dao=new EmpDao();
		try {
			List<EmpDto> list=dao.getList();
			resp.setContentType("application/xml; charset=utf-8");
			PrintWriter out = resp.getWriter();
			out.println("<emps>");
			for(EmpDto bean:list){
				out.println("	<emp>");
				out.println("		<empno>"+bean.getEmpno()+"</empno>");
				out.println("		<ename>"+bean.getEname()+"</ename>");
				out.println("		<job>"+bean.getJob()+"</job>");
				out.println("		<deptno>"+bean.getDeptno()+"</deptno>");
				out.println("	</emp>");
			}
			out.println("</emps>");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
