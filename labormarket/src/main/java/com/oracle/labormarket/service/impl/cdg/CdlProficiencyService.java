package com.oracle.labormarket.service.impl.cdg;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oracle.labormarket.entity.Cdg;
import com.oracle.labormarket.mapper.cdg.CdgComputerMapper;
import com.oracle.labormarket.service.cdg.ICdgComputerService;
import com.oracle.labormarket.service.cdg.ICdlProficiencyService;

@Service
public class CdlProficiencyService implements ICdlProficiencyService{
	@Autowired
	private CdgComputerMapper mapper;
	@Override
	public List<Cdg> select() {
		return mapper.selectAll();
	}
}
