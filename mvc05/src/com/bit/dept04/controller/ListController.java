package com.bit.dept04.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.dept04.model.Dept04Dao;

@WebServlet("/index.bit")
public class ListController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		Dept04Dao dao=null;
		dao=new Dept04Dao();
		req.setAttribute("list", dao.selectAll());
		
		req.getRequestDispatcher("/index.jsp").forward(req, resp);
	}
}








