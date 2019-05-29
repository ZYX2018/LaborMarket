package com.oracle.labormarket.service.impl.cdg;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oracle.labormarket.entity.Cdg;
import com.oracle.labormarket.mapper.cdg.CdgIndustryMapper;
import com.oracle.labormarket.service.cdg.ICdgIndustryService;
@Service
public class CdgIndustryService implements ICdgIndustryService {
	@Autowired
	private CdgIndustryMapper mapper;
	@Override
	public List<Cdg> select() {
		return mapper.selectAll();
	}

}
