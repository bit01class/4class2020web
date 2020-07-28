package com.bit.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.model.Emp03Dao;
import com.bit.model.Emp03Dto;

@WebServlet("/list.bit")
public class ListController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// model
		try {
			Emp03Dao dao=new Emp03Dao();
			ArrayList<Emp03Dto> list = dao.selectAll();
			request.setAttribute("alist", list);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// view ю╖юс
		RequestDispatcher rd = request.getRequestDispatcher("list.jsp");
		rd.forward(request, response);
	}

}
