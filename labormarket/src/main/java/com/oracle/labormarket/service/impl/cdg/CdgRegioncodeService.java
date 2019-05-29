package com.oracle.labormarket.service.impl.cdg;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oracle.labormarket.entity.Cdg;
import com.oracle.labormarket.mapper.cdg.CdgRegioncodeMapper;
import com.oracle.labormarket.service.cdg.ICdgRegioncodeService;
@Service
public class CdgRegioncodeService implements ICdgRegioncodeService {
@Autowired
 	private CdgRegioncodeMapper mapper; 
	@Override
	public List<Cdg> selectProvince() {
		Map<String,Object> map = new HashMap();
		map.put("cd_id", "__0000000000");
		return mapper.select(map);
	}
	@Override
	public List<Cdg> selectCity(String provinceId) {
		Map<String,Object> map = new HashMap(); 		
		map.put("cd_id",provinceId.substring(0, 2)+"__00000000");
		map.put("citycd_id", provinceId);
		return mapper.select(map);
	}
	@Override
	public List<Cdg> selectArea(String cityId) {
		Map<String,Object> map = new HashMap(); 	
		map.put("cd_id",cityId.substring(0, 4)+"__000000");
		map.put("areacd_id", cityId);
		return mapper.select(map);
	}
	@Override
	public List<Cdg> select() {
		return mapper.selectAll();
	}

}
