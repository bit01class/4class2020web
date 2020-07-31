package com.bit.dept.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.dept.model.Dept04Dao;

@WebServlet("/dept/add.bit")
public class AddController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//http://localhost:8080/mvc03/dept/add.bit
		//상관없음
		request.getRequestDispatcher("/addDept.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String dname=request.getParameter("dname").trim();
		String loc=request.getParameter("loc").trim();
		
		try {
			Dept04Dao dao=new Dept04Dao();
			dao.insertOne(dname, loc);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		response.sendRedirect("./list.bit");
	}

}







