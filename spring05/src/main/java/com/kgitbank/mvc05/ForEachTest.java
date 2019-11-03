package com.kgitbank.mvc05;

public class ForEachTest {

	public static void main(String[] args) {
		int[] num = {1,2,3,4,5};
		
		for (int x : num) {
			System.out.println(x);
		}
		
		
		for (int i = 0; i < num.length; i++) {
				System.out.println(num[i]);
		}
	}
}
