package com.bit.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.model.Emp03Dao;
import com.bit.model.Emp03Dto;

@WebServlet("/edit.bit")
public class EditController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		int sabun=Integer.parseInt(req.getParameter("idx"));
		try {
			Emp03Dao dao=new Emp03Dao();
			Emp03Dto bean = dao.selectOne(sabun);
			req.setAttribute("dto", bean);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		RequestDispatcher rd = req.getRequestDispatcher("edit.jsp");
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		int sabun=Integer.parseInt(req.getParameter("sabun").trim());
		String name=req.getParameter("name").trim();
		String sub=req.getParameter("sub").trim();
		int pay=Integer.parseInt(req.getParameter("pay").trim());
		
		try {
			Emp03Dao dao=new Emp03Dao();
			dao.updateOne(sabun, name, sub, pay);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		resp.sendRedirect("detail.bit?idx="+sabun);
	}
}









