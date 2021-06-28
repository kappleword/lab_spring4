<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie cs[] = request.getCookies();
	String c_name = null;
	for(int i=0;i<cs.length;i++){
		if("c_name".equals(cs[i].getName())){
			c_name = cs[i].getValue();
		}
	}
	//c_name = "1";
	out.print("쿠키값 : "+c_name);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우왕앙</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://www.jeasyui.com/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="https://www.jeasyui.com/easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="https://www.jeasyui.com/easyui/themes/color.css">
<link rel="stylesheet" type="text/css" href="https://www.jeasyui.com/easyui/demo/demo.css">
<script type="text/javascript" src="https://www.jeasyui.com/easyui/jquery.easyui.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA-FKKja8sdfgMggjEvEa5agaP6D9wBd6s"></script>
<script type="text/javascript">
	let c_name="<%=c_name%>";
	function login(){//로그인 해봐
		let u_id = $("#mem_id").val();
		let u_pw = $("#mem_pw").val();//id와 pw를 받아옴
		//alert("u_pw: "+u_pw);
		let param = "mem_id="+u_id+"&mem_pw="+u_pw;
		$.ajax({
			type:"post",
			data:param,
			url:"/login/cookieLogin",
			success:function(data){
				//alert("data:"+data)
				c_name = data;
				$("#d_login").hide();
				$("#d_logout").show();
				$("#logok").text(c_name+"님...");
			},
			error:function(xhrObject){
				alert(xhrObject.responseText);
			}
		});
	}
	function logout(){//로그아웃임
		$.ajax({//쿠키삭제
			type:"get",
			url:"./cookieDelete.jsp?cname=cname&timestamp="+new Date().getTime(),
			success:function(data){
				//alert("data:"+data)
				Cookie cname = new Cookie("notebook", "");
				cname.setMaxAge(0);
				response.addCookie(cname);
			},
			error:function(xhrObject){
				alert(xhrObject.responseText);
			}
		});
		$("#d_login").show();
		$("#d_logout").hide();
	}
	function like(u_num){//개추
		
	}
	function hate(u_num){//비추
		
	}
</script>
</head>
<body>
<!--  -->
<script type="text/javascript">
	$(document).ready(function(){<!-- 준비완료 옵션 -->
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
		<!-- 구글지도 시작 -->
			<div id="d_map" style="width:695px; height:595px;"></div>
		<!-- 구글지도 끝 -->
		</td>
		<td width="200px" valign="top">
<%
//쿠키가 null일때
	//if(c_name == null){
%>

	<!-- 로그인 페이지 시작 -->
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
	<!-- 로그인 페이지 끝 -->
<%
	//}
//쿠키가 있을일때
//else{
%>	
	
	<!-- 로그아웃 페이지 시작 -->
	<div id="d_logout">
		<form id="f_logout">
		<table width="100%" border="0" borderColor="blue">
				<tr>
					<td style="width:110px">
						<span id="logok"></span>
					</td>
					<td>
					<a id="btn_logout" href="javascript:logout()" class="easyui-linkbutton" style="height:30px">로그아웃</a>
					</td>
				</tr>
		</table>	
		</form>
	</div>
	<!-- 로그아웃 페이지 끝 -->
<%
//}
%>	
	</td>
	</tr>
</table>
</body>
</html>