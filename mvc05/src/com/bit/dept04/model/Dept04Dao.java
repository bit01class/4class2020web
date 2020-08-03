package com.bit.dept04.model;

import java.util.ArrayList;
import java.util.List;

public class Dept04Dao {

	public List<Dept04Dto> selectAll(){
		List<Dept04Dto> list=new ArrayList<Dept04Dto>();
		for(int i=0; i<10; i++){
		list.add(new Dept04Dto(
				1000*(i+1),
				"테스트"+i,"테스트지역"
				));
		}
		return list;
	}
}
