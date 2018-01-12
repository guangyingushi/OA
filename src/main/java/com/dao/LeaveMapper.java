package com.dao;

import com.entity.Leave;

public interface LeaveMapper {
    int deleteByPrimaryKey(Integer leaveId);

    int insert(Leave record);

    int insertSelective(Leave record);

    Leave selectByPrimaryKey(Integer leaveId);

    int updateByPrimaryKeySelective(Leave record);

    int updateByPrimaryKey(Leave record);
}