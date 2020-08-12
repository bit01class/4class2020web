package com.bit.controller;

import java.io.IOException;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

public class ApiController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Logger log=Logger.getGlobal();
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		log.info(request.getParameter("msg"));
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MultipartRequest mr = new MultipartRequest(request, "/");
		log.info(request.getParameter("msg"));
		log.info(mr.getParameter("msg"));
		log.info(mr.getFilesystemName("img"));
		
		//doGet(request, response);
	}

}
