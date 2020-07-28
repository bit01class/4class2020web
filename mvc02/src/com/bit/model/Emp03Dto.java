package com.bit.model;

import java.sql.Date;

public class Emp03Dto {
	private int sabun;
	private String name;
	private String sub;
	private Date nalja;
	private int pay;
	
	public Emp03Dto() {
		// ¹Ýµå½Ã
	}

	public int getSabun() {
		return sabun;
	}

	public void setSabun(int sabun) {
		this.sabun = sabun;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSub() {
		return sub;
	}

	public void setSub(String sub) {
		this.sub = sub;
	}

	public Date getNalja() {
		return nalja;
	}

	public void setNalja(Date nalja) {
		this.nalja = nalja;
	}

	public int getPay() {
		return pay;
	}

	public void setPay(int pay) {
		this.pay = pay;
	}

	@Override
	public String toString() {
		return "Emp03Dto [sabun=" + sabun + ", name=" + name + ", sub=" + sub
				+ ", nalja=" + nalja + ", pay=" + pay + "]";
	}
	
}
