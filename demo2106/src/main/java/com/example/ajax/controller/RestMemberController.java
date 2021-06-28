package com.example.ajax.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/login")
public class RestMemberController {
	Logger logger = LogManager.getLogger(RestMemberController.class);
	@Autowired
	private MemberLogic memberLogic = null;
	@RequestMapping("/jsonLogin")
	public String jsonLogin(HttpServletRequest req
			             , @RequestParam Map<String,Object> pmap) {
		HttpSession session = req.getSession();
		String s_name = null;
		s_name = memberLogic.login(pmap);
		session.setAttribute("s_name", s_name);
		return s_name;
	}
	@PostMapping("/postLogin")
	public String postLogin(HttpServletRequest req
			, @RequestBody Map<String,Object> pmap) {
		logger.info("postLogin");
		HttpSession session = req.getSession();
		String s_name = null;
		s_name = memberLogic.login(pmap);
		session.setAttribute("s_name2", s_name);
		return s_name;
	}
}