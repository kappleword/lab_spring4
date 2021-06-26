<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String s_name = (String)session.getAttribute("s_name");
	out.print("session:"+s_name);
%>