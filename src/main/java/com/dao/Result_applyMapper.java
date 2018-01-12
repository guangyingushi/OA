package com.dao;

import com.entity.Result_apply;

public interface Result_applyMapper {
    int deleteByPrimaryKey(Integer rAId);

    int insert(Result_apply record);

    int insertSelective(Result_apply record);

    Result_apply selectByPrimaryKey(Integer rAId);

    int updateByPrimaryKeySelective(Result_apply record);

    int updateByPrimaryKey(Result_apply record);
}