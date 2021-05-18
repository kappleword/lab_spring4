package com.example.demo;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RestDeptController {
	Logger logger = LogManager.getLogger(RestDeptController.class);
	@RequestMapping("dept/responsePage")
	public String responsePage() {
		logger.info("responsePage 호출 성공");
		return "한글 페이지";
	}

}
