package com.oracle.labormarket.service.impl.cdg;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oracle.labormarket.entity.Cdg;
import com.oracle.labormarket.mapper.cdg.CdgLanguageMapper;
import com.oracle.labormarket.service.cdg.ICdgLanguageService;
@Service
public class CdgLanguageService implements ICdgLanguageService {
	@Autowired
	private CdgLanguageMapper mapper;
	@Override
	public List<Cdg> select() {
		return mapper.selectAll();
	}

}
