package com.bit.emp04.model;

public class Emp04Dto {
	private int sabun;
	private String name;
	private int lvl;
	
	public Emp04Dto() {
	}

	public Emp04Dto(int sabun, String name, int lvl) {
		super();
		this.sabun = sabun;
		this.name = name;
		this.lvl = lvl;
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

	public int getLvl() {
		return lvl;
	}

	public void setLvl(int lvl) {
		this.lvl = lvl;
	}
	
}
