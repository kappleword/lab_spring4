<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>으앙쿵</title>

<script type="text/javascript" src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://www.jeasyui.com/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="https://www.jeasyui.com/easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="https://www.jeasyui.com/easyui/themes/color.css">
<link rel="stylesheet" type="text/css" href="https://www.jeasyui.com/easyui/demo/demo.css">
<script type="text/javascript" src="https://www.jeasyui.com/easyui/jquery.easyui.min.js"></script>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDc8eUYR51speKR8GCsoP3rS4kILu30G1k"></script>
<script type="text/javascript">
</script>
</head>
<body>
<script type="text/javascript">
	$(document).ready(function(){
		if(c_name !=null){
			$("#d_login").hide();
			$("#d_logout").show();			
		}else{
			$("#d_login").show();
			$("#d_logout").hide();
		}
		let map = new google.maps.Map(document.getElementById('d_map'),{
			zoom: 14
			,center: new google.maps.LatLng(37, 126)
		    ,mapTypeId: google.maps.MapTypeId.ROADMAP
		});
	});
</script>
<table align="center" width="900px" height="600px" border="1">
	<tr>
		<td width="700px">
		<!-- 구글 지도 서비지 시작 -->
		<div id="d_map" style="width:695px; height:595px;"></div>
		<!-- 구글 지도 서비지  끝 -->
		</td>
		<td width="200px" valign="top">
<%
//쿠키가 널일때
	//if(c_name == null){
%>		
	<!--================ [[로그인 화면 시작]] ===============-->	
	<div id="d_login">
		<form id="f_login">
			<table width="100%" border="0" borderColor="blue">		
			<tr>
				<td>
				<input id="mem_id" name="mem_id" class="easyui-textbox" prompt="아이디" data-options="iconCls:'icon-man'" style="width:110px">				
				</td>
				<td rowspan="2">
				<a id="btn_login" href="javascript:login()" class="easyui-linkbutton" style="height:60px">로그인</a>
				</td>
			</tr>
			<tr>
				<td>
				<input id="mem_pw" name="mem_pw" class="easyui-textbox" data-options="iconCls:'icon-lock'" prompt="비밀번호" style="width:110px">				
				</td>
			</tr>	
			</table>	
		</form>
	</div>
	<!--================ [[로그인 화면  끝 ]] ===============-->	
<% 
	//}
//쿠키가 있을 때
//else{
%>	
	<!--================ [[로그아웃 화면 시작]] ===============-->	
	<div id="d_logout">
		<form id="f_logout">
		<table width="100%" border="0" borderColor="blue">
			<tr>
				<td align="right" style="width:110px">
					<span id="logok"></span>
				</td>
				<td>
				<a id="btn_logout" href="javascript:logout()" class="easyui-linkbutton" style="height:30px">로그아웃</a>
				</td>
			</tr>
		</table>
		</form>
	</div>
	<!--================ [[로그아웃 화면  끝 ]] ===============-->	
<%
//}
%>	
		</td>
	</tr>
</table>
</body>
</html> 