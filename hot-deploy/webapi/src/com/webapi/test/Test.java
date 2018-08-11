package com.webapi.test;

import org.ofbiz.base.util.Base64;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Base64 b = new Base64();
		System.out.println("admin###########"+b.base64Encode("adimin"));
		System.out.println("YWRpbWlu########"+b.base64Decode("YWRpbWlu"));
	}

}
