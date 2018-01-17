package com.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class DeparementMgrController {
	
	@RequestMapping("department.html")
	public String test(){
		return "rsmgr/department";	
	}
}
