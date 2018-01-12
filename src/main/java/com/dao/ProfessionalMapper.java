package com.dao;

import com.entity.Professional;

public interface ProfessionalMapper {
    int deleteByPrimaryKey(Integer professionalId);

    int insert(Professional record);

    int insertSelective(Professional record);

    Professional selectByPrimaryKey(Integer professionalId);

    int updateByPrimaryKeySelective(Professional record);

    int updateByPrimaryKey(Professional record);
}