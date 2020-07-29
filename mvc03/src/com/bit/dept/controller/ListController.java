package com.bit.dept.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.dept.model.Dept04Dao;
import com.bit.dept.model.Dept04Dto;

@WebServlet("/dept/list.bit")
public class ListController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Dept04Dao dao=new Dept04Dao();
			ArrayList<Dept04Dto> list = dao.selectAll();
			request.setAttribute("list",list);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher("../list.jsp").forward(request, response);
	}

}
