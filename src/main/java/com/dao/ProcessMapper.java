package com.dao;

import com.entity.Process;

public interface ProcessMapper {
    int deleteByPrimaryKey(Integer processId);
     /**
      *  添加流程表信息 
      */
    int insertProcess(Process record);

    int insertSelective(Process record);

    Process selectByPrimaryKey(Integer processId);
     
    int updateByPrimaryKeySelective(Process record);

    int updateByPrimaryKey(Process record);
}