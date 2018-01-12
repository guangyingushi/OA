package com.dao;

import com.entity.Counduct;

public interface CounductMapper {
    int deleteByPrimaryKey(Integer counductId);

    int insert(Counduct record);

    int insertSelective(Counduct record);

    Counduct selectByPrimaryKey(Integer counductId);

    int updateByPrimaryKeySelective(Counduct record);

    int updateByPrimaryKey(Counduct record);
}