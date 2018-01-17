package com.test;

import org.apache.shiro.crypto.hash.SimpleHash;

public class shiroMD5 {
    
	public static void  main(String[] args) {
        String credentials = "1234";
        String  usercode="y00001";
        
        System.out.println(new SimpleHash("MD5", credentials, usercode).toString());
    }

}
	
