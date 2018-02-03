package com.dao;

import com.entity.Result_apply;

public interface Result_applyMapper {
	
    int deleteByPrimaryKey(Integer rAId);
     /**
      *   添加   申报(审核)结果表 
      */
    int insertResApp(Result_apply record);

    int insertSelective(Result_apply record);

    Result_apply selectByPrimaryKey(Integer rAId);

    int updateByPrimaryKeySelective(Result_apply record);

    int updateByPrimaryKey(Result_apply record);
}