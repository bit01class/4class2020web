package com.bit.emp.dto;

import java.sql.Date;

// javaBean
// getter & setter ����
// ĸ��ȭ - ������ ���н��� ���ϴ� ��� ����

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









