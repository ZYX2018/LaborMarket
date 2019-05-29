package com.oracle.labormarket.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.oracle.labormarket.entity.LdlscUser;

public interface UserMapper {
	public List<LdlscUser> select(Map<String,Object> map);
	public int count(Map<String,Object> map);
	
	public LdlscUser getUserBypassword(@Param("userloginname")String userloginname,@Param("userpassword")String userpassword);
}
