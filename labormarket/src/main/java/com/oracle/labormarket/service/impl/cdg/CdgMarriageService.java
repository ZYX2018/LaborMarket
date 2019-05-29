package com.oracle.labormarket.service.impl.cdg;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oracle.labormarket.entity.Cdg;
import com.oracle.labormarket.mapper.cdg.CdgMarriageMapper;
import com.oracle.labormarket.service.cdg.ICdgMarriageService;
@Service
public class CdgMarriageService implements ICdgMarriageService {
	@Autowired
	private CdgMarriageMapper mapper;
	@Override
	public List<Cdg> select() {
		return mapper.selectAll();
	}

}
