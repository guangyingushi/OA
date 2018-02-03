package com.dao;

import com.entity.Apply;

public interface ApplyMapper {
	/**
	 * @return id删除
	 */
    int deleteByPrimaryKey(Integer aId);
    /**
	 * @return  添加申报表
	 */
    int insert(Apply record);
    /**
	 * @return 条件添加
	 */
    int insertSelective(Apply record);
    /**
	 * @return id 查询
	 */
    Apply selectByPrimaryKey(Integer aId);
    /**
   	 *   通过  ID  按条件修改申报表
   	 */
    int updateByPrimaryKeySelective(Apply record);
    /**
   	 * @return   修改
   	 */
    int updateByPrimaryKey(Apply record);
    /**
     *   获取   申报表 最大id 值
     */
    Apply selectApplyMaxId();
    
    
    
    
    
    
}