package com.oracle.labormarket.service.impl.cdg;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oracle.labormarket.entity.Cdg;
import com.oracle.labormarket.mapper.cdg.CdlQualificationMapper;
import com.oracle.labormarket.service.cdg.ICdlQualificationService;
@Service
public class CdlQualificationService implements ICdlQualificationService{
@Autowired
	private CdlQualificationMapper mapper;
	@Override
	public List<Cdg> select() {
		return mapper.selectAll();
	}

}
