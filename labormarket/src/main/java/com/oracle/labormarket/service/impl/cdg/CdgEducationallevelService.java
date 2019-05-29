package com.oracle.labormarket.service.impl.cdg;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oracle.labormarket.entity.Cdg;
import com.oracle.labormarket.mapper.cdg.CdgEducationallevelMapper;
import com.oracle.labormarket.service.cdg.ICdgEducationallevelService;
@Service
public class CdgEducationallevelService  implements ICdgEducationallevelService{
	@Autowired
	private CdgEducationallevelMapper mapper;
	@Override
	public List<Cdg> select() {
		// TODO Auto-generated method stub
		return mapper.selectAll();
	}
	
}
