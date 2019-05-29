package com.oracle.labormarket.service.impl.cdg;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oracle.labormarket.entity.Cdg;
import com.oracle.labormarket.mapper.cdg.CdgPoliticsaspectMapper;
import com.oracle.labormarket.service.cdg.ICdgPoliticsaspectService;

@Service
public class CdgPoliticsaspectService implements ICdgPoliticsaspectService{
	@Autowired
	private CdgPoliticsaspectMapper mapper;
	@Override
	public List<Cdg> select() {
		return mapper.selectAll();
	}

}
