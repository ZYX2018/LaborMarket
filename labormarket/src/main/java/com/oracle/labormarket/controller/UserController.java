package com.oracle.labormarket.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.oracle.labormarket.common.Common;
import com.oracle.labormarket.entity.LdlscUser;
import com.oracle.labormarket.service.IUserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private IUserService userService;
	@RequestMapping("/select")
	public String select(@RequestParam(defaultValue="1")int pageNo,Model model){
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("index", (pageNo-1)*Common.PAGESIZE);
		map.put("size", Common.PAGESIZE);
		List<LdlscUser> userList = userService.select(map);
		int count = userService.selectCount(map);
		int sum = (count+Common.PAGESIZE-1)/Common.PAGESIZE;
		model.addAttribute("userList", userList);
		model.addAttribute("sum", sum);
		model.addAttribute("pageNo",pageNo);
		return "forward:/jsp/user/UIUserQueryList.jsp";
	}
	
	/*
	 * µÇÂ½Ð£Ñé
	 */
	@RequestMapping(value="/login.do")
	public String login() {
		
		
		return "";
	}
}
