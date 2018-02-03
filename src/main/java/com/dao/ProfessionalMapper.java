package com.dao;

import java.util.List;

import com.entity.Professional;

public interface ProfessionalMapper {
    int deleteByPrimaryKey(Integer professionalId);

    int insert(Professional record);

    int insertSelective(Professional record);

    Professional selectByPrimaryKey(Integer professionalId);

    int updateByPrimaryKeySelective(Professional record);

    int updateByPrimaryKey(Professional record);
    /**
     *  查找 职位表所有信息
     */
    List<Professional> selectAllProfessional();
}