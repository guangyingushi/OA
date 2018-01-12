package com.dao;

import com.entity.Category_dispatch;

public interface Category_dispatchMapper {
    int deleteByPrimaryKey(Integer cDId);

    int insert(Category_dispatch record);

    int insertSelective(Category_dispatch record);

    Category_dispatch selectByPrimaryKey(Integer cDId);

    int updateByPrimaryKeySelective(Category_dispatch record);

    int updateByPrimaryKey(Category_dispatch record);
}