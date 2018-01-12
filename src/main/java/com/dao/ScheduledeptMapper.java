package com.dao;

import com.entity.Scheduledept;

public interface ScheduledeptMapper {
    int deleteByPrimaryKey(Integer scheduledeptId);

    int insert(Scheduledept record);

    int insertSelective(Scheduledept record);

    Scheduledept selectByPrimaryKey(Integer scheduledeptId);

    int updateByPrimaryKeySelective(Scheduledept record);

    int updateByPrimaryKey(Scheduledept record);
}