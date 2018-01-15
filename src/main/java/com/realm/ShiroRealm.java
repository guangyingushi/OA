package com.realm;

import java.util.List;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import com.entity.Login;
import com.entity.Role;
import com.entity.User_role;
import com.service.LoginService;
import com.service.RoleService;
import com.service.User_roleService;

/**
 * shiro realm 认证授权
 * @author Administrator
 *
 */
public class ShiroRealm extends AuthorizingRealm {
	//使用类型注解匹配调取业务接口
    @Autowired
	private LoginService ls;
    @Autowired
    private User_roleService urs;
    @Autowired
	private RoleService rs;
	//授权
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		// TODO Auto-generated method stub
		String usercode= (String) principals.getPrimaryPrincipal();
		Login login=ls.login(usercode);
		Integer uid= login.getuId();
		List<String> roles=null;
		List<User_role>  userRoles=urs.getUserRoles(uid);
		for (User_role user_role : userRoles) {
			Role role= rs.getRoles(user_role.getrId());
			roles.add(role.getrName());
		}
		SimpleAuthorizationInfo info=new SimpleAuthorizationInfo();
		info.addStringPermissions(roles);
		return info;
	}
    
	//登陆 认证
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		// TODO Auto-generated method stub
		UsernamePasswordToken utoken=(UsernamePasswordToken) token;
		String usercode=utoken.getUsername();
		Login login=ls.login(usercode);
		ByteSource salt=ByteSource.Util.bytes(usercode);//加密盐
		//使用现实方法创建对象，构造方法参数使用（用户名、密码、加密盐、当前方法名）
		AuthenticationInfo authenticationInfo =new SimpleAuthenticationInfo(usercode,login.getLoginPassword(),salt,this.getName()); 
		return authenticationInfo;
	}

}
