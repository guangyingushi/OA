package com.web;

import java.util.List;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Login;
import com.entity.Role;
import com.entity.User_role;
import com.service.LoginService;
import com.service.RoleService;
import com.service.User_roleService;

@Controller
public class LoginController {
   
	@Autowired
	private LoginService loginService; //用户登陆业务接口
	@Autowired
	private RoleService roleService;
	@Autowired
	private User_roleService userRoleService;
	
	/**
	 * 用户登陆
	 */
	@RequestMapping("tologin")
	public String userLogin(String loginUsercode,String loginPassword){
		UsernamePasswordToken usernamePasswordToken=new UsernamePasswordToken(loginUsercode,loginPassword);//把账户和密码存到令牌中
		Subject currentUser=SecurityUtils.getSubject();
		if(!currentUser.isAuthenticated()){
			currentUser.login(usernamePasswordToken);//进行认证
		}
	    return "home";
	}
	
	/**
	 * 用户角色查询
	 */
	@RequestMapping("getroles/{name}")
	@ResponseBody
	public Role getRoles(@PathVariable String name){
       System.out.println("我触发了");
       Login login=loginService.login(name);
	   Integer uid= login.getuId();
	   Role role=null;
	   List<User_role>  userRoles=userRoleService.getUserRoles(uid);
	   if(userRoles.size()>0){
		   for (User_role user_role : userRoles) {
			    role= roleService.getRoles(user_role.getrId());
			
			}  
	   }
	   return role ;
	 
	}
	/**
	 * 去登陆
	 * @return
	 */
	@RequestMapping("login.html")
	public String toLogin(){
		System.out.println("我触发了");
		return "login";
	}
}
