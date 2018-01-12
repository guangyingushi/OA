package com.dao;

import com.entity.Dispatch;

public interface DispatchMapper {
    int deleteByPrimaryKey(Integer dispatchId);

    int insert(Dispatch record);

    int insertSelective(Dispatch record);

    Dispatch selectByPrimaryKey(Integer dispatchId);

    int updateByPrimaryKeySelective(Dispatch record);

    int updateByPrimaryKey(Dispatch record);
}