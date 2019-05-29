package com.oracle.labormarket.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.labormarket.entity.Cdg;
import com.oracle.labormarket.mapper.cdg.CdgComputerMapper;
import com.oracle.labormarket.service.cdg.ICdgComputerService;

@Controller
@RequestMapping("/test")
public class TestCdgController {
	@Autowired
	private ICdgComputerService computerService;
	@RequestMapping("/cdg")
	public void test(){
		List<Cdg> list = computerService.select();
		for(Cdg c:list){
			System.out.println(c.getCdName());
		}
	}
}
