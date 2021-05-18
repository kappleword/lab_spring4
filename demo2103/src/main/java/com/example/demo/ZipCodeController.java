package com.example.demo;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/zipcode/*")
public class ZipCodeController {
	Logger logger = LogManager.getLogger(ZipCodeController.class);
	@Autowired
	private ZipCodeLogic zipCodeLogic = null;
	@RequestMapping("getZipCodeList")
	public String getZipCodeList() {
		logger.info("getZipCodeList 호출 성공");
		
		return "forward:getZipCodeList.jsp";
	}

}
