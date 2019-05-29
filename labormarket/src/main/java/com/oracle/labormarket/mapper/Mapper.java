package com.oracle.labormarket.mapper;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

public interface Mapper<T> {
	public List<T> select(Map<String,Object> map);	
	public int insert(T entity);
	public T selectById(Serializable id);
	public int update(T entity);
	public int delete(Serializable id);


}
