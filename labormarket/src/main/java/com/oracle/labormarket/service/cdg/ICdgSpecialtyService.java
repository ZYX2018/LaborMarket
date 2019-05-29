package com.oracle.labormarket.service.cdg;

import java.util.List;

import com.oracle.labormarket.entity.Cdg;

public interface ICdgSpecialtyService {
	public List<Cdg> selectBig();
	public List<Cdg> selectZ(String BigId);
	public List<Cdg> selectXiao(String ZId);
	public List<Cdg> selectXi(String id);
}
