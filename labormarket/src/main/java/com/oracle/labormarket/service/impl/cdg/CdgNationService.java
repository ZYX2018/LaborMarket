package com.oracle.labormarket.service.impl.cdg;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oracle.labormarket.entity.Cdg;
import com.oracle.labormarket.mapper.cdg.CdgNationMapper;
import com.oracle.labormarket.service.cdg.ICdgNationService;
@Service
public class CdgNationService implements ICdgNationService {
	@Autowired
	private CdgNationMapper mapper;
	@Override
	public List<Cdg> select() {
		return mapper.selectAll();
	}
}
