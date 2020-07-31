package com.bit.dept.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.dept.model.Dept04Dao;

@WebServlet("/dept/detail.bit")
public class DetailController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		int deptno=Integer.parseInt(req.getParameter("idx"));
		try {
			Dept04Dao dao=new Dept04Dao();
			req.setAttribute("bean", dao.selectOne(deptno));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		req.getRequestDispatcher("/detail.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		int deptno=Integer.parseInt(req.getParameter("deptno"));
		String dname=req.getParameter("dname").trim();
		String loc=req.getParameter("loc").trim();
		try {
			Dept04Dao dao=new Dept04Dao();
			dao.updateOne(deptno, dname, loc);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		resp.sendRedirect("list.bit");
	}
}










