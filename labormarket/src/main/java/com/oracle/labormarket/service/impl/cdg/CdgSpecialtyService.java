package com.oracle.labormarket.service.impl.cdg;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oracle.labormarket.entity.Cdg;
import com.oracle.labormarket.mapper.cdg.CdgSpecialtyMapper;
import com.oracle.labormarket.service.cdg.ICdgSpecialtyService;
@Service
public class CdgSpecialtyService  implements ICdgSpecialtyService{
	@Autowired
	private CdgSpecialtyMapper mapper;

	@Override
	public List<Cdg> selectBig() {
		Map<String, Object>map=new HashMap<String, Object>();
		map.put("cdId", "__00000");
		return mapper.select(map);
	}

	@Override
	public List<Cdg> selectZ(String BigId) {
		Map<String, Object>map=new HashMap<String, Object>();
		map.put("cdId",BigId.substring(0, 2)+ "__000");
		map.put("excdId", BigId);
		return mapper.select(map);
	}

	@Override
	public List<Cdg> selectXiao(String id) {
		Map<String, Object>map=new HashMap<String, Object>();
		map.put("cdId",id.substring(0, 4)+ "__0");
		map.put("excdId", id);
		return mapper.select(map);
	}

	@Override
	public List<Cdg> selectXi(String id) {
		Map<String, Object>map=new HashMap<String, Object>();
		map.put("cdId",id.substring(0, 6)+ "_");
		map.put("excdId", id);
		return mapper.select(map);
	}
	
	

	
	
}
