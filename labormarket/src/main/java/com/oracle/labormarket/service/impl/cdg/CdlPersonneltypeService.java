package com.oracle.labormarket.service.impl.cdg;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oracle.labormarket.entity.Cdg;
import com.oracle.labormarket.mapper.cdg.CdlPersonneltypeMapper;
import com.oracle.labormarket.service.cdg.ICdlPersonneltypeService;
@Service
public class CdlPersonneltypeService implements ICdlPersonneltypeService{
@Autowired
	private CdlPersonneltypeMapper mapper;
	@Override
	public List<Cdg> select() {
		
		return mapper.selectAll();
	}

}
