package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.RoleMapper;
import com.entity.Role;
import com.service.RoleService;
@Service
public class RoleServiceImpl implements RoleService {
    @Autowired
	private RoleMapper rMapper;
	@Override
	public Role getRoles(Integer rId) {
		// TODO Auto-generated method stub
		return rMapper.selectByPrimaryKey(rId);
	}


}
