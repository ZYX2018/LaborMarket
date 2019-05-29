package com.oracle.labormarket.service.impl.cdg;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oracle.labormarket.entity.Cdg;
import com.oracle.labormarket.mapper.cdg.CdgZjdgwlbMapper;
import com.oracle.labormarket.service.cdg.ICdgZjdgwlbService;

@Service
public class  CdgZjdgwlbService implements ICdgZjdgwlbService{
	@Autowired
	private CdgZjdgwlbMapper mapper;
	@Override
	public List<Cdg> select() {
		return mapper.selectAll();
	}
}
