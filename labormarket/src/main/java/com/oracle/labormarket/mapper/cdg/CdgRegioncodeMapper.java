package com.oracle.labormarket.mapper.cdg;

import java.util.List;

import com.oracle.labormarket.entity.Cdg;
import com.oracle.labormarket.mapper.Mapper;

public interface CdgRegioncodeMapper extends Mapper<Cdg>{
	public List<Cdg> select();
	public List<Cdg> selectAll();
	public String selectNameById(String id);
}
