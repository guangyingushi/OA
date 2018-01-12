package com.dao;

import com.entity.Msg_info;

public interface Msg_infoMapper {
    int deleteByPrimaryKey(Integer msgId);

    int insert(Msg_info record);

    int insertSelective(Msg_info record);

    Msg_info selectByPrimaryKey(Integer msgId);

    int updateByPrimaryKeySelective(Msg_info record);

    int updateByPrimaryKey(Msg_info record);
}