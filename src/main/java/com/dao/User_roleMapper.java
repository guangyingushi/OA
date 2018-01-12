package com.dao;

import com.entity.User_role;

public interface User_roleMapper {
    int deleteByPrimaryKey(Integer uRId);

    int insert(User_role record);

    int insertSelective(User_role record);

    User_role selectByPrimaryKey(Integer uRId);

    int updateByPrimaryKeySelective(User_role record);

    int updateByPrimaryKey(User_role record);
}