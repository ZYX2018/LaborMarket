package com.oracle.labormarket.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oracle.labormarket.entity.LdlscUser;
import com.oracle.labormarket.mapper.UserMapper;
import com.oracle.labormarket.service.IUserService;
@Service
public class UserService implements IUserService{
	@Autowired
	private UserMapper userMapper;
	@Override
	public List<LdlscUser> select(Map<String, Object> map) {
		return userMapper.select(map);
	}
	@Override
	public int selectCount(Map<String, Object> map) {
		return userMapper.count(map);
	}
	
	

}
