package com.dao;

import com.entity.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer uId);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer uId);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
    /**
     * 通过职位id查询
     */
    public User selectByProfessionalId(Integer pid);
 
}