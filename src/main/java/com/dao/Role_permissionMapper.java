package com.dao;

import com.entity.Role_permission;

public interface Role_permissionMapper {
    int deleteByPrimaryKey(Integer rPId);

    int insert(Role_permission record);

    int insertSelective(Role_permission record);

    Role_permission selectByPrimaryKey(Integer rPId);

    int updateByPrimaryKeySelective(Role_permission record);

    int updateByPrimaryKey(Role_permission record);
}