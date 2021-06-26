<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map" %>    
<%
	List<Map<String,Object>> zipList = 
	(List<Map<String,Object>>)request.getAttribute("zipList");
	int size = 0;
	if(zipList !=null){
		size = zipList.size();
	}
	out.print("백엔드에서 넘어온 값의 크기 "+size);
	out.print("<br>");
	out.print("백엔드에서 넘어온 정보 "+zipList);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getZipCodeList.jsp[WEB-INF]</title>
</head>
<body>
우편 번호 검색기 페이지 입니다.
<%
	
%>
</body>
</html>