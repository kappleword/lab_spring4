package com.example.ajax.controller;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

@Repository
public class MemberDao {
	private static final String NAMESPACE = "com.example.ajax.";
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate = null;

	public String login(Map<String, Object> pmap) {
		// TODO Auto-generated method stub
		String s_name = null;
		//pmap.put("mem_id", "tomato");
		//pmap.put("mem_pw", "123");
		sqlSessionTemplate.selectOne(NAMESPACE+"proc_login",pmap);
		System.out.println("r_name:"+pmap.get("r_name"));
		s_name = pmap.get("r_name").toString();
		return s_name;
	}
	
}