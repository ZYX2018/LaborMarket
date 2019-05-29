package com.oracle.labormarket.mapper.cdg;

import java.util.List;

import com.oracle.labormarket.entity.Cdg;
import com.oracle.labormarket.mapper.Mapper;

public interface CdgSpecialtyMapper extends Mapper<Cdg>{
		public List<Cdg> selectById ();

		public String selectNameById(String id);
}
