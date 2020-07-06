package com.bit.emp.dto;

import java.sql.Date;

// javaBean
// getter & setter 구성
// 캡슐화 - 정보를 은닉시켜 원하는 제어만 제공

public class Emp02Bean {
	private int sabun;
	private String name;
	private Date nalja;
	private int pay;
	
	public void setSabun(int sabun){
		this.sabun=sabun;
	}
	public int getSabun(){
		return this.sabun;
	}
	public void setName(String name){
		this.name=name;
	}
	public String getName(){
		return this.name;
	}
	public void setNalja(Date nalja) {
		this.nalja = nalja;
	}
	public Date getNalja() {
		return nalja;
	}
	public void setPay(int pay) {
		this.pay = pay;
	}
	public int getPay() {
		return pay;
	}
}









