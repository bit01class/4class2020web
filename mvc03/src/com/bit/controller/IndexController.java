package com.bit.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/index.bit")
public class IndexController extends HttpServlet {
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		//http://localhost:8080/mvc03/index.bit
		//http://localhost:8080/mvc03/index.jsp
		request.getRequestDispatcher("./index.jsp").forward(request, response);
	}

}
