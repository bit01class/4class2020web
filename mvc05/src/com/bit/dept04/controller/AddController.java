package com.bit.dept04.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bit.emp04.model.Emp04Dto;

@WebServlet("/add.bit")
public class AddController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		HttpSession session = req.getSession();
		Object obj = session.getAttribute("login");
		if(obj!=null){
			Emp04Dto bean=(Emp04Dto) obj;
			if(bean.getLvl()>0){
				req.getRequestDispatcher("add.jsp").forward(req, resp);			
			}else{
				req.getRequestDispatcher("err.jsp").forward(req, resp);
			}
		}else{
			resp.sendRedirect("login.bit");
		}
	}
}
