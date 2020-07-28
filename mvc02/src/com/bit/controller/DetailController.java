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

@WebServlet("/detail.bit")
public class DetailController extends HttpServlet {
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
		RequestDispatcher rd = req.getRequestDispatcher("detail.jsp");
		rd.forward(req, resp);
	}
}










