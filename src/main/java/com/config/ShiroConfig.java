package com.config;

import java.util.LinkedHashMap;

import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.bind.annotation.PathVariable;

import com.realm.ShiroRealm;

import org.apache.shiro.authc.credential.CredentialsMatcher;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.cache.CacheManager;
import org.apache.shiro.cache.ehcache.EhCacheManager;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.realm.Realm;
/**
 * shiro框架配置文件
 * @author Administrator
 *
 */
@Configuration
public class ShiroConfig {
    
	/**
	 * shiroFilter 过滤器练配置
	 */
	@Bean
	public ShiroFilterFactoryBean shiroFilter(SecurityManager securityManager){
		ShiroFilterFactoryBean sff=new ShiroFilterFactoryBean();
		sff.setSecurityManager(securityManager);//加载安全管理器
		sff.setLoginUrl("/login.html");//登陆url
		sff.setSuccessUrl("/home");//登陆成功url
		//创建过滤器练的map参数对象
		LinkedHashMap<String, String> filterChainDefinitionMap=new LinkedHashMap<>();
	    filterChainDefinitionMap.put("/login.html", "anon"); //表示可以匿名访问
        filterChainDefinitionMap.put("/loginUser", "anon"); 
        filterChainDefinitionMap.put("/logout","anon");
        /*filterChainDefinitionMap.put("/jsp/error.jsp*","anon");
        filterChainDefinitionMap.put("/jsp/index.jsp*","authc");*/
        filterChainDefinitionMap.put("/*", "authc");//表示需要认证才可以访问
        filterChainDefinitionMap.put("/**", "authc");//表示需要认证才可以访问
        //filterChainDefinitionMap.put("/*.*", "authc");
		//配置访问权限，过滤器练设置
		sff.setFilterChainDefinitionMap(filterChainDefinitionMap);
		return sff;	
	}
	/**
	 *配置安全管理器
	 */
	@Bean
	public SecurityManager securityManager(Realm realm){
		DefaultWebSecurityManager defaultWebSecurityManager=new DefaultWebSecurityManager();
		defaultWebSecurityManager.setRealm(realm);//设置域，桥梁属性
		//defaultWebSecurityManager.setCacheManager(cacheManager);//缓存设置
		return defaultWebSecurityManager;	
	}
	/**
	 * 缓存设置
	 * @return
	 */
/*	@Bean
    public EhCacheManager ehCacheManager(){
        EhCacheManager cacheManager = new EhCacheManager();
        cacheManager.setCacheManagerConfigFile("classpath:config/ehcache-shiro.xml");
        return cacheManager;
    }*/
     
	/**
	 * realm設置
	 */
	@Bean
    public Realm  realm(CredentialsMatcher credentialsMatcher){
    	ShiroRealm shiroRealm= new ShiroRealm();
    	shiroRealm.setCredentialsMatcher(credentialsMatcher);
		return shiroRealm;
    }
	/**
	 * 加密設置
	 * @return
	 */
    @Bean
    public CredentialsMatcher credentialsMatcher(){
    	HashedCredentialsMatcher hashedCredentialsMatcher=new HashedCredentialsMatcher();
    	hashedCredentialsMatcher.setHashAlgorithmName("MD5");
    	hashedCredentialsMatcher.setHashSalted(true);
		return hashedCredentialsMatcher;
    }
    /*方法授權驗證*/
}
