package com.oracle.labormarket.service.impl.cdg;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oracle.labormarket.entity.Cdg;
import com.oracle.labormarket.mapper.cdg.CdgRprtypeMapper;
import com.oracle.labormarket.service.cdg.ICdgRprtypeService;

@Service
public class CdgRprtypeService implements ICdgRprtypeService{
	@Autowired 
	private CdgRprtypeMapper mapper;
	@Override
	public List<Cdg> select() {
		return mapper.selectAll();
	}
	
}
