package com.test;

class Target{
	
	public Target() {
		System.out.println("°´Ã¼ »ý¼ºµÊ");
	}
	
	void func(){
		System.out.println("Target func...");
	}
}

public class Ex01 {

	public static void main(String[] args) {
//		Target target=new Target();
//		target.func();
		
		String info="com.test.Target";
		try {
			Class clazz=Class.forName(info);
			Target result=(Target)clazz.newInstance();
			result.func();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		}
		
		

	}

}
