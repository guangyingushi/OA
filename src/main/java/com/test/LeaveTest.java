package com.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.entity.Apply;
import com.service.LeaveService;
import com.service.impl.leaveServiceImpl;

@RunWith(SpringRunner.class)
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
public class LeaveTest {
	
    @Autowired
	private LeaveService LeaveService;
    
    @Test
	public void applyTest() {
    	Apply app = LeaveService.selectApplyMaxId();
    	System.out.println(app.getMaxaId());
	}
    
  
}
