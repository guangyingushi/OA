package com.dao;

import com.entity.Dispatch_apply;

public interface Dispatch_applyMapper {
    int deleteByPrimaryKey(Integer dispatchApplyId);

    int insert(Dispatch_apply record);

    int insertSelective(Dispatch_apply record);

    Dispatch_apply selectByPrimaryKey(Integer dispatchApplyId);

    int updateByPrimaryKeySelective(Dispatch_apply record);

    int updateByPrimaryKey(Dispatch_apply record);
}