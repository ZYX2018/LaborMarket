package com.oracle.labormarket.service.impl.cdg;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oracle.labormarket.entity.Cdg;
import com.oracle.labormarket.mapper.cdg.CdgHealthstateMapper;
import com.oracle.labormarket.service.cdg.ICdgHealthstateService;
@Service
public class CdgHealthstateService implements ICdgHealthstateService {
	@Autowired
	private CdgHealthstateMapper mapper;
	@Override
	public List<Cdg> select() {
		return mapper.selectAll();
	}

}
