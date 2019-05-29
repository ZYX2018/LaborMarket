package com.oracle.labormarket.service.impl.cdg;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oracle.labormarket.entity.Cdg;
import com.oracle.labormarket.mapper.cdg.CdgDeformityMapper;
import com.oracle.labormarket.service.cdg.ICdgDeformityService;

@Service
public class CdgDeformityService implements ICdgDeformityService{
	@Autowired
	private CdgDeformityMapper mapper;
	@Override
	public List<Cdg> select() {
		return mapper.selectAll();
	}

}
