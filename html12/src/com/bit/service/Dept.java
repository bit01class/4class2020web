package com.bit.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.model.DeptDao;
import com.bit.model.DeptDto;

public class Dept extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		/*
		 * json
		 * {"key":[{{"key1":"val1","key2":"val2"},{"key1":"val3","key2":"val4"}}]}
		 * 
		*/
		DeptDao dao=new DeptDao();
		try {
			List<DeptDto> list = dao.getList();
			resp.setContentType("application/json; charset=utf-8");
			PrintWriter out = resp.getWriter();
			out.println("{\"students\":[");
			
			for(int i=0; i<list.size(); i++){
				DeptDto bean = list.get(i);
				if(i!=0) out.println(",");
				out.println("{");
				out.println("\"deptno\":"+bean.getDeptno());
				out.println(",\"dname\":\""+bean.getDname()+"\"");
				out.println(",\"loc\":\""+bean.getLoc()+"\"");
				out.println("}");
			}
			out.println("]}");
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
}
















