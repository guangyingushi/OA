package com.dao;

import com.entity.Thelog;

public interface ThelogMapper {
    int deleteByPrimaryKey(Integer thelogId);

    int insert(Thelog record);

    int insertSelective(Thelog record);

    Thelog selectByPrimaryKey(Integer thelogId);

    int updateByPrimaryKeySelective(Thelog record);

    int updateByPrimaryKey(Thelog record);
}