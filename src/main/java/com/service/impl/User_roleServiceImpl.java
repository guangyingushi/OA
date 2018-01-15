package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.User_roleMapper;
import com.entity.User_role;
import com.service.User_roleService;

@Service
public class User_roleServiceImpl implements User_roleService {
     
	@Autowired
	private User_roleMapper urMapper;
	
	@Override
	public List<User_role> getUserRoles(Integer uid) {
		// TODO Auto-generated method stub
		return urMapper.getUserRoles(uid);
	}

}
