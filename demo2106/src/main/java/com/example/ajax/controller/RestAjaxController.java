package com.example.ajax.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;

@RestController
@RequestMapping("/ajax80")
public class RestAjaxController {
	@GetMapping("/pizza/jsonGetCustomerList")
	//@GetMapping(value="/pizza/jsonGetCustomerList", produces="application/json;charset=UTF-8")
	public String jsonGetCustomerList(@RequestParam Map<String,Object> pMap) {
		System.out.println("pMap:"+pMap);
		List<Map<String,Object>> cusList = new ArrayList<>();
		Map<String,Object> rmap = new HashMap<>();
		rmap.put("mem_name", "박정호");
		rmap.put("mem_addr", "경기도 고양시 덕양구 화정동");
		rmap.put("mem_tel", "38684786");
		cusList.add(rmap);
		
		rmap = new HashMap<>();
		rmap.put("mem_name", "이정호");
		rmap.put("mem_addr", "서울시 금천구 가산동");
		rmap.put("mem_tel", "35483212");
		cusList.add(rmap);
		
		rmap = new HashMap<>();
		rmap.put("mem_name", "김정호");
		rmap.put("mem_addr", "서울시 마포구 공덕동");
		rmap.put("mem_tel", "32451231");
		cusList.add(rmap);
		Gson gson = new Gson();
		String imsi = gson.toJson(cusList);
		return imsi;
	}
}