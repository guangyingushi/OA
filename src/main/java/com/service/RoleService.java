package com.service;

import java.util.List;

import com.entity.Role;

/**
 * 角色业务层
 * @author Administrator
 *
 */
public interface RoleService {
    /**
     * 通过rid,获取角色
     * @param Rid
     * @return
     */
	Role getRoles(Integer Rid);

}
