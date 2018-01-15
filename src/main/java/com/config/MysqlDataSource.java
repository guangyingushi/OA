package com.config;

import java.beans.PropertyVetoException;
import java.sql.Driver;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.jdbc.DataSourceBuilder;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.context.annotation.PropertySource;

import com.alibaba.druid.pool.DruidDataSource;
import com.mchange.v2.c3p0.ComboPooledDataSource;



@Configuration
@PropertySource("classpath:jdbc.properties")//使用c3p0时使用jdbc.properties属性文件
public class MysqlDataSource {
	@Value("${jdbc.driver}")
	private String driverName;
	@Value("${jdbc.url}")
	private String url;
	@Value("${jdbc.username}")
	private String name;
	@Value("${jdbc.password}")
	private String password;
	
/*   //德鲁伊链接池 
     @Bean
      @Primary
      @ConfigurationProperties(prefix="spring.datasource")
	  public DataSource dataSource(){
		  return DataSourceBuilder.create().type(DruidDataSource.class).build();
		  
	  }*/

    
	
	  //c3p0连接池
	  @Bean(destroyMethod="close")
	  public DataSource dataSource(){
			ComboPooledDataSource cpd = new ComboPooledDataSource();
			try {
				cpd.setDriverClass(driverName);
				cpd.setJdbcUrl(url);
				cpd.setUser(name);
				cpd.setPassword(password);
			} catch (PropertyVetoException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return cpd;
	    	 
	     }
}
