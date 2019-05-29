package com.oracle.labormarket.service.impl.cdg;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oracle.labormarket.entity.Cdg;
import com.oracle.labormarket.mapper.cdg.CdlOrgTypeMapper;
import com.oracle.labormarket.service.cdg.ICdlOrgTypeService;

@Service
public class CdlOrgTypeService implements ICdlOrgTypeService {
	@Autowired
	private CdlOrgTypeMapper mapper;
	@Override
	public List<Cdg> select() {
		return mapper.selectAll();
	}
	 
	

}
