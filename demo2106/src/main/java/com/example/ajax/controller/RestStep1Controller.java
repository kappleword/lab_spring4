package com.example.ajax.controller;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.ajax.vo.MemberVO;

@RestController
@RequestMapping("/step1")
public class RestStep1Controller {
	//localhost:7001/step1/get/10
	@GetMapping("/get/{id}")
	public String get(@PathVariable Long id, @RequestParam String name) {
		return "id : "+id+", name : "+name;
	}
	@PostMapping("/post")
	public MemberVO post(@RequestBody MemberVO mvo) {
		return mvo;
	}
	@DeleteMapping("/delete")
	public void delete() throws InterruptedException{
		Thread.sleep(1000*2);//삭제하는데 2초가 걸린다 가정하고 계산, 스프링교재 157p
	}
	@PutMapping("/put")
	public MemberVO put(@RequestBody MemberVO mvo) {
		System.out.println("put call success!!!");
		System.out.println("MemberVO : "+mvo);
		return mvo;
	}
}
