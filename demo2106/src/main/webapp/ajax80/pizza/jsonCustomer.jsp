<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.google.gson.Gson" %>    
<%@ page import="java.util.*" %>    
<%
	List<Map<String,Object>> cusList = null;
	cusList = (List)request.getAttribute("cusList");
	Gson gson = new Gson();
	String imsi = gson.toJson(cusList);
	out.print(imsi);
%>