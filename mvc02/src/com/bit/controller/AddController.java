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

@WebServlet("/add.bit")
public class AddController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// �Է� �� ������ ���
		RequestDispatcher rd = request.getRequestDispatcher("add.jsp");
		rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// �Է� ��� ����
		request.setCharacterEncoding("utf-8");
		int sabun=0;
		try{
			sabun=Integer.parseInt(request.getParameter("sabun").trim());
		}catch(NumberFormatException e){
			request.setAttribute("err", "����� ���ڷ� �Է����ּ���");
			doGet(request, response);
			return;
		}
		String name=request.getParameter("name").trim();
		String sub=request.getParameter("sub").trim();
		int pay=0;
		try{
		pay=Integer.parseInt(request.getParameter("pay").trim());
		}catch(NumberFormatException e){
			request.setAttribute("err", "�ݾ��� ���ڷ� �Է��ϼ���");
			doGet(request, response);
			return;
		}
		
		try {
			Emp03Dao dao=new Emp03Dao();
			dao.insertOne(sabun, name, sub, pay);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		response.sendRedirect("list.bit");
	}

}










