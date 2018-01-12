package com.dao;

import com.entity.Scheduleemployees;

public interface ScheduleemployeesMapper {
    int deleteByPrimaryKey(Integer sId);

    int insert(Scheduleemployees record);

    int insertSelective(Scheduleemployees record);

    Scheduleemployees selectByPrimaryKey(Integer sId);

    int updateByPrimaryKeySelective(Scheduleemployees record);

    int updateByPrimaryKey(Scheduleemployees record);
}