package com.bit.dept.model;

import java.sql.SQLException;
import java.util.ArrayList;

import com.sun.org.apache.xerces.internal.parsers.DTDConfiguration;

public class DeptTest {

	public static void main(String[] args) {
		try {
			Dept04Dao dao=new Dept04Dao();
			System.out.println("connection:"+(dao.conn!=null));
			// list
			ArrayList<Dept04Dto> list = dao.selectAll();
			System.out.println("list:"+(list!=null));
			System.out.println("list size 예상치:5, 결과치:"+(list.size()));
			// insert
			dao=new Dept04Dao();
			int result=dao.insertOne("test1", "test1");
			System.out.println("insert:"+(result>0));
			// max
			dao=new Dept04Dao();
			int max=dao.maxDeptno();
			System.out.println("최근 입력deptno="+max);
			// update
			Dept04Dto target=new Dept04Dto(max,"edit1","edit2");
			dao=new Dept04Dao();
			result=dao.updateOne(target.getDeptno(), target.getDname(), target.getLoc());
			System.out.println("update1:"+(result>0));
			// detail
			dao=new Dept04Dao();
			Dept04Dto dto = dao.selectOne(target.getDeptno());
			System.out.println("수정 예상치:"+target);
			System.out.println("수정 결과치:"+dto);
			System.out.println("update2:"+(target.equals(dto)));
			// delete
			dao=new Dept04Dao();
			result=dao.deleteOne(max);
			System.out.println("delete:"+(result>0));
			// count
			dao=new Dept04Dao();
			result=dao.rowCount();
			System.out.println("count ?"+(result==5));
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}








