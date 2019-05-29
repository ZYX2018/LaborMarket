package com.oracle.labormarket.service;

import java.util.List;
import java.util.Map;

import com.oracle.labormarket.entity.LdlscUser;

public interface IUserService {
	public List<LdlscUser> select(Map<String,Object> map);
	public int selectCount(Map<String,Object> map);
}
