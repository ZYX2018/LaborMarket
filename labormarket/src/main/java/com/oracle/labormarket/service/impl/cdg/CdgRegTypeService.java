package com.oracle.labormarket.service.impl.cdg;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oracle.labormarket.entity.Cdg;
import com.oracle.labormarket.mapper.cdg.CdgRegTypeMapper;
import com.oracle.labormarket.service.cdg.ICdgRegTypeService;
@Service
public class CdgRegTypeService implements ICdgRegTypeService {
	@Autowired
	private CdgRegTypeMapper mapper;
	@Override
	public List<Cdg> select() {
		return mapper.selectAll();
	}

}
