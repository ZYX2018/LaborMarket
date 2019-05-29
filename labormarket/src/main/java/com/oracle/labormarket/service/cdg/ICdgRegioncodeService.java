package com.oracle.labormarket.service.cdg;

import java.util.List;

import com.oracle.labormarket.entity.Cdg;

public interface ICdgRegioncodeService {
	public List<Cdg> selectProvince();
	public List<Cdg> selectCity(String provinceId);
	public List<Cdg> selectArea(String cityId);
	public List<Cdg> select();
}
