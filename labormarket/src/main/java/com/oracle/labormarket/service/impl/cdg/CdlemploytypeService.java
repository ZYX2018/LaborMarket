package com.oracle.labormarket.service.impl.cdg;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oracle.labormarket.entity.Cdg;
import com.oracle.labormarket.mapper.cdg.CdlEmploytypeMapper;
import com.oracle.labormarket.service.cdg.ICdlEmploytypeService;
@Service
public class CdlemploytypeService implements ICdlEmploytypeService {
	@Autowired
	private CdlEmploytypeMapper mapper;
	@Override
	public List<Cdg> select() {
		return mapper.selectAll();
	}

}
