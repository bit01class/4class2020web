package com.bit.emp04.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bit.emp04.model.Emp04Dao;
import com.bit.emp04.model.Emp04Dto;

@WebServlet("/login.bit")
public class LoginController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.getRequestDispatcher("login.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		int sabun=Integer.parseInt(req.getParameter("sabun"));
		String name=req.getParameter("name");
		Emp04Dao dao=new Emp04Dao();
		Emp04Dto bean = dao.login(sabun, name);
		HttpSession session = req.getSession();
		session.setAttribute("login", bean);
		req.getRequestDispatcher("result.jsp").forward(req, resp);
	}
}




