package com.service;

import java.util.List;

import com.entity.User_role;

/**
 * 用户、角色中间表
 * @author Administrator
 *
 */
public interface User_roleService {
    /**
     *通过用户id获取角色id
     */
	List<User_role> getUserRoles(Integer uid);
}
