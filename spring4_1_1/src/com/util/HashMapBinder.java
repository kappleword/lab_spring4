package com.util;

import java.util.Enumeration;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;

public class HashMapBinder {
	Logger				logger	= Logger.getLogger(HashMapBinder.class);
	HttpServletRequest	request	= null;

	public HashMapBinder() {
	}

	public HashMapBinder(HttpServletRequest request) {//요청 url에 들어있는 주소값을 전달함
		this.request = request;
	}

	public void bind(Map<String, Object> target) {
		//열거한다= 요청받은 키값을 bm_no등등
		Enumeration<String> en = request.getParameterNames();
		// <input type="text" name="mem_id"
		//키값이 존재하지않을떄까지루프돌림
		while (en.hasMoreElements()) {
			//커서를내리면서 다음 요소를 불러온다
			String key = en.nextElement();
			logger.info("value:" + request.getParameter(key));
			//targetㅇ리ㅏㄴ이름에 map을 넣어준다, put을 통해 //키값에 값을 한글화시켜준
			target.put(key, HangulConversion.toUTF(request.getParameter(key)));
			logger.info("value:" + target);
		}
	}//////// end of bind
}
