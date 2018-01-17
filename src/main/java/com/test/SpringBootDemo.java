package com.test;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.context.annotation.ApplicationScope;


/**
 * 
 *springboot 整合测试类
 * @author Administrator
 *
 */
@Configuration
@ComponentScan({"com.config","com.web","com.service.impl"})
@SpringBootApplication
public class SpringBootDemo {
     public static void main(String[] args) {
		SpringApplication.run(SpringBootDemo.class, args);
	}
    
}
