<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html> 
 <head>
  <meta charset="UTF-8">
  <title>Break Neck Pizza Delivery</title>     
  <script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
  <script type="text/javascript">
    //피자 주문시 호출 함수  
    function orderPizza(){
    	//alert("orderPizza 호출 성공");
  		let paper = $("#paper").val();//주문내용을 읽기 
  		//alert("paper"+paper+"여기");
  		//textarea, input text 모두 디폴트가 빈문자열 null 혹은 undefine
    	if(paper !=""){
    		alert("주문내용 입력 성공");
	    	$("#f_order").submit();//폼 전송이 일어난다. -ajax제외	
    	}else{
    		alert("주문내용 입력 안함");
    		 $("#paper").focus();//커서를 이동해 두어서 바로 입력받을 수 있도록 한다.
    	}
    }
    //ajax 적용 구간
  	function getCustomerInfo(){
    	//사용자가 입력한 전화번호를 담기
  		let user_tel = $("#mem_tel").val();
  		//console.log("사용자 전번 : "+user_tel);
  		//fetch API
    	$.ajax({//ajax함수- 여러가지 속성 type, url, dataType, success, error
  		  type:"get",
  		  url: "jsonGetCustomerList",
  		  dataType:"json",
	          success:function(data){//data-  분석- {id:test} [{id:test}] {"id":"test"},.....유사품 주의할것.
	        	  let result = JSON.stringify(data);
	        	  console.log(result);
	        	  //배열로 커스터마이징
	        	  let jsonDoc  = JSON.parse(result);
	        	  //console.log("tel:"+jsonDoc.length);
        		  let temp='';
	        	  if(jsonDoc.length>0){
	        		  for(let i=0;i<jsonDoc.length;i++){
	        			  if(user_tel == jsonDoc[i].mem_tel){
	        				  temp+=jsonDoc[i].mem_addr;
	        			  }
	        		  }
	        	  }///////////////////end of if
	        	  $("#mem_addr").text(temp);//html- 인터프리터를 받음
	          },
	          error:function(e){//e는 XMLHttpRequest- 비동기 통신 객체
	        	  let x = e.responseXML;
	        	  alert("fail ===> "+x)
	          }
  		});  	
  	}
  </script>
 </head>
 <body>
 <form id="f_order" method="post" action="orderPizza">
 	<input type="hidden" id="mem_name" name="mem_name" value="홍길동">
  <p><img src="breakneck-logo.gif" alt="Break Neck Pizza" /></p>
   <p>Enter your phone number:
    <input type="text" size="14" id="mem_tel" name="mem_tel" onChange="getCustomerInfo()"/>
   </p>
   <p>Type your order in here:</p>
   <p><textarea name="paper" id="paper" rows="6" cols="50"></textarea></p>
   <p>Your order will be delivered to:</p>
   <!-- 
   JSON포맷의 이름과 태그의 name속성과 id속성을 같은 값으로 통일함.
   name속성은 jsp에서 사용자가 입력한 값을 읽을 때 사용함.
   id속성은 javascript에서 사용자가 입력한 값을 읽을 때 사용함.
   name과 id속성은 같은 값을 사용함.
   오라클 서버에 테이블 컬럼명과 VO패턴의 멤버변수 이름, Map의 key는 모두 통일해서 사용함.
    -->
   <p><textarea name="mem_addr" id="mem_addr" rows="4" cols="50"></textarea></p>
   <p><input type="button" id="btn_order" value="Order Pizza"/></p>
 <script type="text/javascript">
 	$("#btn_order").click(function(e){
 		e.preventDefault();
 		orderPizza();
 	});
 </script>   
 </form>
  <div id="d_msg"></div>
 </body>
</html>