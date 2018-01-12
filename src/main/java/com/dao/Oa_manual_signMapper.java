package com.dao;

import com.entity.Oa_manual_sign;

public interface Oa_manual_signMapper {
    int deleteByPrimaryKey(Integer omsId);

    int insert(Oa_manual_sign record);

    int insertSelective(Oa_manual_sign record);

    Oa_manual_sign selectByPrimaryKey(Integer omsId);

    int updateByPrimaryKeySelective(Oa_manual_sign record);

    int updateByPrimaryKey(Oa_manual_sign record);
}