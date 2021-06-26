<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//jsp라 쓰고 html이라 읽는다 -View 계층
//jsp에서 로직을 구현한다? - ㄴㄴ애바
//jsp라쓰고 json을 내보낸다 - 클라우드 기반의 서비를 
//pojo HashMapBinder hmb = new HashMapBinder(req);
//spring boot @RequestParam Map<String,Object>
	String user_id = request.getParameter("mem_id");
	String user_pw = request.getParameter("mem_pw");
	//out.print(user_id+", "+user_pw);
	//out.print("<br>");
	out.print("엄준식");
%>