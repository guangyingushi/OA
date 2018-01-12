package com.dao;

import com.entity.Apply;

public interface ApplyMapper {
    int deleteByPrimaryKey(Integer aId);

    int insert(Apply record);

    int insertSelective(Apply record);

    Apply selectByPrimaryKey(Integer aId);

    int updateByPrimaryKeySelective(Apply record);

    int updateByPrimaryKey(Apply record);
}